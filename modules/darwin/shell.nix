{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    extraConfig = ''
      fpath=(${pkgs.zsh-completions}/share/zsh/site-functions $fpath)
      autoload -Uz compinit
      compinit -u

      zstyle ':completion:*' menu select
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
    '';
  };
}
