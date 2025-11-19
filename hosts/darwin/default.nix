{user,...}: {
  imports = [
    ../../modules/darwin
  ];

  users.users."${user}" = {
    home = "/Users/${user}";
    description = user;
  };
  system.primaryUser = user;

  nix.settings.trusted-users = [user];
}
