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
    pup
    R
    socat # replacement of openbsd-netcat
    uv
    wezterm
    yq-go # yaml processer https://github.com/mikefarah/yq
    yt-dlp
    zstd
    ripgrep # recursively searches directories for a regex pattern
  ];
}
