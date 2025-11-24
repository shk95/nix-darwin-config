{...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    profileExtra = ''
      eval "$(brew shellenv)"
    '';
    initContent = ''
      # brew shell completion
      autoload -Uz compinit
      compinit
    '';
  };
}
