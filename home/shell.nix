{...}: {
  home.shell.enableZshIntegration = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    profileExtra = ''
    '';
    initContent = ''
    '';
  };
}
