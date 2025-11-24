# update hostname here!

hostname := "default"

# List all the just commands
default:
    @just --list

############################################################################
#
#  Darwin related commands
#
############################################################################

[group('desktop')]
darwin:
    nix build .#darwinConfigurations.{{ hostname }}.system \
      --extra-experimental-features 'nix-command flakes'

    sudo -E ./result/sw/bin/darwin-rebuild switch --flake .#{{ hostname }}
    just switch-zsh

[group('desktop')]
darwin-debug:
    nix build .#darwinConfigurations.{{ hostname }}.system --show-trace --verbose \
      --extra-experimental-features 'nix-command flakes'

    sudo -E ./result/sw/bin/darwin-rebuild switch --flake .#{{ hostname }} --show-trace --verbose

[group('desktop')]
check *args:
    nix flake check
    nix build .#darwinConfigurations.{{ hostname }}.system --dry-run {{ args }}

############################################################################
#
#  nix related commands
#
############################################################################

# Update all the flake inputs
[group('nix')]
up:
    nix flake update

# Update specific input

# Usage: just upp nixpkgs
[group('nix')]
upp input:
    nix flake update {{ input }}

# List all generations of the system profile
[group('nix')]
history:
    nix profile history --profile /nix/var/nix/profiles/system

# Open a nix shell with the flake
[group('nix')]
repl:
    nix repl -f flake:nixpkgs

# remove all generations older than 7 days

# on darwin, you may need to switch to root user to run this command
[group('nix')]
clean:
    sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

# Garbage collect all unused nix store entries
[group('nix')]
gc:
    # garbage collect all unused nix store entries(system-wide)
    sudo nix-collect-garbage --delete-older-than 7d
    # garbage collect all unused nix store entries(for the user - home-manager)
    # https://github.com/NixOS/nix/issues/8508
    nix-collect-garbage --delete-older-than 7d

[group('nix')]
fmt:
    # format the nix files in this repo
    nix fmt .

# Show all the auto gc roots in the nix store
[group('nix')]
gcroot:
    ls -al /nix/var/nix/gcroots/auto/

# Check and switch to nix-darwin's zsh as login shell
[group('setup')]
switch-zsh:
    #!/usr/bin/env bash
    set -euo pipefail

    CURRENT_SHELL="$SHELL"
    TARGET_SHELL="/run/current-system/sw/bin/zsh"

    # Check if current shell is already the target
    if [ "$CURRENT_SHELL" = "$TARGET_SHELL" ]; then
    echo "Current shell is already $TARGET_SHELL"
    exit 0
    fi

    # Check if the target shell is listed in /etc/shells
    if ! grep -Fxq "$TARGET_SHELL" /etc/shells; then
    echo "$TARGET_SHELL is not registered in /etc/shells. Please add it first."
    exit 1
    fi

    # Change login shell using sudo, preserving environment
    echo "Changing login shell to $TARGET_SHELL"
    sudo -E chsh -s "$TARGET_SHELL" "$USER"
    echo "Login shell updated. Log out and back in."
