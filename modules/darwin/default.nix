{system, ...}: {
  imports = [
    ../../modules/common
    ./users.nix
    ./system.nix
    ./shell.nix
    ./networking.nix
    ./homebrew.nix
    ./packages.nix
  ];

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = system;
}
