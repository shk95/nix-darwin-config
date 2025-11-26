{user, ...}: {
  users.users."${user}" = {
    home = "/Users/${user}";
  };
}
