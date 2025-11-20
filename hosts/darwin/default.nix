{...}: let
  hostname = "shk";
in {
  imports = [
    ../../modules/darwin
  ];

  networking.hostName = hostname;
  networking.computerName = hostname;
  system.defaults.smb.NetBIOSName = hostname;
}
