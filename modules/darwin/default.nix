{system, ...}: {
  imports = [
    ../../modules/common
    ../../modules/darwin/users.nix
    ../../modules/darwin/system.nix
    ../../modules/darwin/homebrew.nix
  ];

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = system;
}
