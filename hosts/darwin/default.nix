{
  user,
  hostname,
  ...
}: {
  # import sub modules
  imports = [
    ../../hosts/darwin/home-manager.nix
    ../../modules/darwin
  ];

  networking.hostName = hostname;
  networking.computerName = hostname;
  system.defaults.smb.NetBIOSName = hostname;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."${user}" = {
    home = "/Users/${user}";
    description = user;
  };
  system.primaryUser = user;

  nix.settings.trusted-users = [user];
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  program.zsh = {
    initContent = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';
  };
}
