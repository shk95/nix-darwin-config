{system, ...}: {
  imports = [
    ../../modules/common
    ./users.nix
    ./system.nix
    ./networking.nix
    ./homebrew.nix
    ./shell.nix
    ./packages.nix
  ];

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = system;
}
