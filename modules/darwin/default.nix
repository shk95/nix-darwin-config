{...}: {
  imports = [
    ../../modules/common
    ../../modules/darwin/system.nix
    ../../modules/darwin/homebrew.nix
  ];

  # The platform the configuration will be used on.
  nixpkgs.hostPlatform = "aarch64-darwin";
}
