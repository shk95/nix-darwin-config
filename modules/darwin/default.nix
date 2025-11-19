{pkgs, ...}: {
  imports = [
    ../../modules/common
    ../../modules/homebrew.nix
    ../../modules/system.nix
  ];

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";

  # Create /etc/zshrc that loads the nix-darwin environment.
  # this is required if you want to use darwin's default shell - zsh
  programs.zsh.enable = true;
  environment.shells = [
    pkgs.zsh
  ];

  # Fonts
  fonts = {
    packages = with pkgs; [
      # icon fonts
      material-design-icons
      font-awesome

      # nerdfonts
      # https://github.com/NixOS/nixpkgs/blob/nixos-unstable-small/pkgs/data/fonts/nerd-fonts/manifests/fonts.json
      nerd-fonts.symbols-only # symbols icon only
      nerd-fonts.fira-code
      nerd-fonts.jetbrains-mono
      nerd-fonts.iosevka
    ];
  };
}
