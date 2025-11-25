# nix-darwin-config
nix-darwin configuraion

## installation

1. Install Apple Developer Tools
```sh
xcode-select --install
```
2. [Install Homebrew](https://github.com/Homebrew/brew/releases/latest)
3. [Install Nix](https://docs.determinate.systems)
```sh
curl -fsSL https://install.determinate.systems/nix | sh -s -- install --prefer-upstream-nix
```
4. Sign into the App Store
5. Enable Full Disk Access for terminal application
6. Build and switch
```sh
nix build .#darwinConfigurations.default.system
sudo -E ./result/sw/bin/darwin-rebuild switch --flake .#default
just switch-zsh
```
7. Reboot system

## References

- [ryan4yin/nix-config](https://github.com/ryan4yin/nix-config)
- [dustinlyons/nixos-config](https://github.com/dustinlyons/nixos-config)
- [mirkolenz/nixos](https://github.com/mirkolenz/nixos)
