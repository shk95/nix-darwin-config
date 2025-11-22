{pkgs, ...}: {
  home.packages = with pkgs; [
    ripgrep # recursively searches directories for a regex pattern
    yq-go # yaml processer https://github.com/mikefarah/yq
    socat # replacement of openbsd-netcat
    nmap # A utility for network discovery and security auditing
    file
    gnused
    gnutar
    gawk
    zstd
    caddy
    gnupg
    glow # markdown previewer in terminal
    alacritty
    wezterm
    yt-dlp
    gh
    ghostscript
    gitflow
    go
    monolith
    poppler
    pstree
    pup
    R
    tig
    tmux
    darwin.trash
    uv
    zsh-completions
    powershell
  ];
}
