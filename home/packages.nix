{pkgs, ...}: {
  home.packages = with pkgs; [
    alacritty
    caddy
    darwin.trash
    file
    gawk
    gh
    ghostscript
    gitflow
    glow # markdown previewer in terminal
    gnupg
    gnused
    gnutar
    go
    monolith
    nmap # A utility for network discovery and security auditing
    poppler
    powershell
    pstree
    pup
    R
    socat # replacement of openbsd-netcat
    tig
    tmux
    uv
    wezterm
    yq-go # yaml processer https://github.com/mikefarah/yq
    yt-dlp
    zsh-completions
    zstd
    ripgrep # recursively searches directories for a regex pattern
  ];
}
