{user, ...}: {
  users.users."${user}" = {
    description = user;
  };
}
