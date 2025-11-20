{...}: {
  homebrew = {
    # This is a module from nix-darwin
    # Homebrew is *installed* via the flake input nix-homebrew
    enable = true;
    onActivation = {
      autoUpdate = true; # Fetch the newest stable branch of Homebrew's git repo
      upgrade = true; # Upgrade outdated casks, formulae, and App Store apps
      # 'zap': uninstalls all formulae(and related files) not listed in the generated Brewfile
      cleanup = "zap";
    };

    # These app IDs are from using the mas CLI app
    # mas = mac app store
    # https://github.com/mas-cli/mas
    #
    # $ nix shell nixpkgs#mas
    # $ mas search <app name>
    #
    # Applications to install from Mac App Store using mas.
    # You need to install all these Apps manually first so that your apple account have records for them.
    # otherwise Apple Store will refuse to install them.
    # For details, see https://github.com/mas-cli/mas
    masApps = {
      # microsoft-excel = 462058435; # error
      microsoft-word = 462054704;
      # microsoft-powerpoint = 462062816; # error
      # microsoft-onenote = 410395246; # error
      microsoft-todo = 1274495053;
      microsoft-onedrive = 823766827;
      # microsoft-windows_app = 1295203466; # error
      hidden-bar = 1452453066;
      # pdfgear = 6465897558; # error
      tot = 1491071483;
      folderpeek = 1615988943;
      # keynote = 361285480; # error
      pages = 409201541;
      # numbers = 361304891; # error
      imovie = 408981434;

      # safari extensions
      adguard = 1440147259;
      # bitwarden = 1352778147; # error
      obsidian-web-clipper = 6720708363;
      refined-github = 1519867270;
      rightclick-fixer = 6745181406;
      rsshub-radar = 1610744717;
      vimlike = 1584519802;
      # wayback-machine = 1201888313; # error
      userscripts = 1463298887;
    };

    taps = [
    ];

    # `brew install`
    brews = [
    ];

    # `brew install --cask`
    casks = [
      "visual-studio-code"
      "telegram"
      "discord"
      "anki"
      "iina"
      "stats"
      "insomnia"
      "chatgpt"
      "dbeaver-community"
      "font-hack-nerd-font"
      "github"
      "grandperspective"
      "heynote"
      "keepassxc"
      "keka"
      "keyboardcleantool"
      "lunar"
      "maccy"
      "ngrok"
      "obsidian"
      "openineditor-lite"
      "openinterminal-lite"
      "postman"
      "protonvpn"
      "qlmarkdown"
      "qlzipinfo"
      "rstudio"
      "signal"
      "swift-shift"
      "syntax-highlight"
      "ungoogled-chromium"
      "utm"
      "wireshark-app"
    ];
  };
}
