{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    package = pkgs.zsh;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    # profileExtra = ''
    # '';
    initContent = ''
      eval "$(/opt/homebrew/bin/brew shellenv)"
      # brew shell completion
      autoload -Uz compinit
      compinit
    '';
    shellAliases = {
      rm = "trash";
    };
  };
}
