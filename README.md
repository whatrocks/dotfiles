# dotfiles

## first thing

### macos

```bash
sudo softwareupdate -i -a
xcode-select --install
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 1
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
killall Dock

```
Remap Caps Lock to Escape
Natural Scrolling
change hostname https://gist.github.com/a1ip/68db7b4e137d958da58e587a3a44dab8
change wakeup https://twitter.com/thorstenball/status/1736679960784310775


https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key

https://registerspill.thorstenball.com/p/new-year-new-job-new-machine

install homebrew


## setup process for mac

This setup is inspired by [this article](https://www.atlassian.com/git/tutorials/dotfiles). Copying the most important parts here in case the article goes away for some reason.

### starting from scratch
```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

### installing dotfiles onto a new computer

first, add to .bashrc

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

then do this

```bash
echo ".cfg" >> .gitignore
```

clone my dotfiles repo to a bare repo

```bash
git clone --bare git@github.com:whatrocks/dotfiles.git $HOME/.cfg
```

define alias in current shell scope

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

checkout the actual content from the care repo to $HOME
```bash
config checkout
```

This step might fail if you have conflicts. this can move the offending files to another repo
```bash
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

Set the flag showUntrackedFiles to no on this specific (local) repository:

```bash
config config --local status.showUntrackedFiles no
```


