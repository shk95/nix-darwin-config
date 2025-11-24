{...}: {
  home.shell.enableZshIntegration = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    profileExtra = ''
    '';
    initContent = ''
    '';
  };
}
