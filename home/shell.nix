{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    initContent = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';
    extraConfig = ''
      fpath=(${pkgs.zsh-completions}/share/zsh/site-functions $fpath)
      autoload -Uz compinit
      compinit -u

      zstyle ':completion:*' menu select
      zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
    '';
  };
}
