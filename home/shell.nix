{
  pkgs,
  lib,
  ...
}: {
  home.shellAliases = {
    rm = "trash"; # darwin specific command
  };

  programs.zsh = {
    enable = true;
    package = pkgs.zsh;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    completionInit = ''
      # brew shell completion
      autoload -Uz compinit
      compinit
    '';
    initContent = let
      a = lib.mkOrder 1000 "zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'";
    in
      lib.mkMerge [a];
  };
}
