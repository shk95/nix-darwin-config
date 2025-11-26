# nix-darwin-config
nix-darwin configuraion

## Installation

---
### Mac OS

1. Install Apple Developer Tools
```sh
xcode-select --install
```
2. [Install Homebrew](https://github.com/Homebrew/brew/releases/latest)
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
---
3. Install Nix
- [Determinate Nix](https://docs.determinate.systems)
- [Nix](https://nixos.org/download/)

4. Sign into the App Store
5. Enable Full Disk Access for terminal application
6. Build and Switch
```sh
nix build .#darwinConfigurations.default.system --extra-experimental-features 'nix-command flakes'
sudo -E ./result/sw/bin/darwin-rebuild switch --flake .#default
```

## References

- [ryan4yin/nix-config](https://github.com/ryan4yin/nix-config)
- [dustinlyons/nixos-config](https://github.com/dustinlyons/nixos-config)
- [mirkolenz/nixos](https://github.com/mirkolenz/nixos)
