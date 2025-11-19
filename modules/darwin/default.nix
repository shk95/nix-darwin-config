{...}: {
  imports = [
    ../../modules/common
    ../../modules/darwin/homebrew.nix
    ../../modules/darwin/system.nix
  ];

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}
