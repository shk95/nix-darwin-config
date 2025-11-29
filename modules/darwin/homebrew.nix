{...}: {
  homebrew = {
    # This is a module from nix-darwin
    # Homebrew is *installed* via the flake input nix-homebrew
    enable = true;
    global.autoUpdate = true;
    onActivation = {
      autoUpdate = true; # Fetch the newest stable branch of Homebrew's git repo
      upgrade = true; # Upgrade outdated casks, formulae, and App Store apps
      cleanup = "zap"; # 'zap': uninstalls all formulae(and related files) not listed in the generated Brewfile
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
      folderpeek = 1615988943;
      hidden-bar = 1452453066;
      imovie = 408981434;
      keynote = 409183694;
      microsoft-onedrive = 823766827;
      microsoft-onenote = 784801555;
      microsoft-excel = 462058435;
      microsoft-powerpoint = 462062816;
      microsoft-word = 462054704;
      microsoft-todo = 1274495053;
      microsoft-windows_app = 1295203466;
      numbers = 409203825;
      pages = 409201541;
      pdfgear = 6469021132;
      tot = 1491071483;

      # safari extensions
      adguard = 1440147259;
      bitwarden = 1352778147;
      obsidian-web-clipper = 6720708363;
      refined-github = 1519867270;
      rightclick-fixer = 6745181406;
      rsshub-radar = 1610744717;
      vimlike = 1584519802;
      wayback-machine = 1472432422;
      userscripts = 1463298887;
    };

    # taps = [
    # ];

    # `brew install`
    brews = [
      "gradle"
      "mas"
      "node"
      "pocketbase"
    ];

    # `brew install --cask`
    casks = [
      "anki"
      "appcleaner"
      "chatgpt"
      "dbeaver-community"
      "discord"
      "font-hack-nerd-font"
      "github"
      "grandperspective"
      "heynote"
      "iina"
      "insomnia"
      "keepassxc"
      "keka"
      "keyboardcleantool"
      "maccy"
      "microsoft-edge"
      "ngrok"
      "obsidian"
      "orbstack"
      "openineditor-lite"
      "openinterminal-lite"
      "protonvpn"
      "qlmarkdown"
      "rstudio"
      "swift-shift"
      "syntax-highlight"
      "telegram"
      "ungoogled-chromium"
      "utm"
      "visual-studio-code"
      "wireshark-app"
    ];
  };
}
