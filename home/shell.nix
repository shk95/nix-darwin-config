{...}: {
  home.shell.enableZshIntegration = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    profileExtra = ''
    '';
    initContent = ''
      eval "$(/opt/homebrew/bin/brew shellenv)"
      # brew shell completion
      autoload -Uz compinit
      compinit
    '';
  };
}
