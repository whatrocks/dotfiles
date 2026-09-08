# Single Brewfile driven by the HOMEBREW_MACHINE env var.
# NOTE: the var MUST be HOMEBREW_-prefixed — brew bundle scrubs all other
# environment variables, so a plain MACHINE=... would arrive as nil.
#
#   HOMEBREW_MACHINE=personal brew bundle --file=~/Brewfile           # install core + personal
#   HOMEBREW_MACHINE=work     brew bundle --file=~/Brewfile           # install core + work
#   HOMEBREW_MACHINE=personal brew bundle cleanup --file=~/Brewfile   # prune to core + personal
#   brew bundle --file=~/Brewfile                                     # core only (no var set)
#
# It's just Ruby, so the conditionals below are evaluated at run time.

machine = ENV["HOMEBREW_MACHINE"]  # "personal" | "work" | nil

tap "homebrew/bundle"

# ============================================================
# CORE  (always)
# ============================================================

# --- brews ---
brew "autoconf"
brew "automake"
brew "bash"
brew "ccache"
brew "cmake"
brew "coreutils"
brew "curl"
brew "direnv"
brew "fzf"
brew "gawk"
brew "gcc"
brew "gh"
brew "git"
brew "git-lfs"
brew "gnu-sed"
brew "gnu-tar"
brew "gpg"
brew "helix"
brew "htop"
brew "jq"
brew "ledger"
brew "libtool"
brew "make"
brew "mas"
brew "mise"
brew "moreutils"
brew "mtr"
brew "mutt"
brew "neovim"
brew "node"
brew "openssl"
brew "rga"
brew "ripgrep"
brew "rsync"
brew "shellcheck"
brew "shfmt"
brew "sqlite3"
brew "tig"
brew "tldr"
brew "tmux"
brew "tree"
brew "uv"
brew "watch"
brew "wget"
brew "yq"
brew "zsh"
brew "zstd"

# --- casks ---
cask "claude"
cask "claude-code"
cask "docker"
cask "firefox"
cask "font-hack"
cask "font-ibm-plex"
cask "font-inconsolata"
cask "font-jetbrains-mono"
cask "font-roboto"
cask "font-roboto-mono"
cask "ghostty"
cask "macfuse"
cask "microsoft-office"
cask "pdf-expert"
cask "rectangle"
cask "slack"
cask "spotify"
cask "todoist"
cask "zoom"

# --- mas ---
mas "1Password for Safari", id: 1569813296
mas "GarageBand", id: 682658836
mas "iMovie", id: 408981434
mas "Keynote", id: 409183694
mas "Numbers", id: 409203825
mas "Pages", id: 409201541
mas "TestFlight", id: 899247664
mas "Xcode", id: 497799835

# ============================================================
# PERSONAL  (MACHINE=personal)
# ============================================================
if machine == "personal"
  # --- brews ---
  brew "ffmpeg"
  brew "gifsicle"
  brew "gleam"
  brew "go"
  brew "gource"
  brew "imagemagick"
  brew "llm"
  brew "ollama"
  brew "pandoc"
  brew "portaudio"
  brew "qemu"
  brew "ruby"
  brew "whisper-cpp"
  brew "yt-dlp"

  # --- casks ---
  cask "anki"
  cask "arduino-ide"
  cask "backblaze"
  cask "chatgpt"
  cask "discord"
  cask "gimp"
  cask "handbrake"
  cask "macwhisper"
  cask "netnewswire"
  cask "obsidian"
  cask "openemu"
  cask "piezo"
  cask "raspberry-pi-imager"
  cask "scratch"
  cask "sonos"
  cask "steam"
  cask "superhuman"
  cask "superwhisper"
  cask "telegram"
  cask "vlc"
  cask "vnc-viewer"
  cask "zed"

  # --- mas ---
  mas "Dark Noise: Ambient Sounds", id: 1465439395
  mas "Drafts", id: 1435957248
  mas "Kindle", id: 405399194
  mas "Logic Pro", id: 634148309
  mas "Tailscale", id: 1475387142
end

# ============================================================
# WORK  (MACHINE=work)
# ============================================================
if machine == "work"
  # --- brews ---
  brew "actionlint"
  brew "awscli"
  brew "newman"
  brew "openapi-generator"
  brew "postgresql@16"
  brew "redis"
  brew "roapi"
  brew "ruff"
  brew "yarn"

  # --- casks ---
  cask "figma"
  cask "framer"
  cask "granola"
  cask "linear-linear"
  cask "loom"
  cask "microsoft-teams"
  cask "postman"
  cask "proxyman"
  cask "screen-studio"
  cask "visual-studio-code"
end
