# dotfiles

## First things first

* Remap caps lock to escape (also swap command and option on the Sculpt keyboard)
* Adjust scroll direction
* Change hostname (instructions for [MacOS](https://gist.github.com/a1ip/68db7b4e137d958da58e587a3a44dab8))
* git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

### MacOS

```sh
sudo softwareupdate -i -a
xcode-select --install
```

Change some settings

```sh
defaults write -g InitialKeyRepeat -int 12
defaults write -g KeyRepeat -int 1
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.4
killall Dock
```

Install Homebrew

change wakeup https://twitter.com/thorstenball/status/1736679960784310775

https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key

## Installing dotfiles onto a new computer

Clone dotfiles repo to a bare repo:

```sh
git clone --bare git@github.com:whatrocks/dotfiles.git $HOME/.cfg
```

Define *alias* in current shell scope:

```sh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

Checkout the actual content from the bare repo to $HOME

```sh
config checkout
```

This step might fail if you have conflicts, so this command can move the offending files to another repo:

```sh
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

Set the flag `showUntrackedFiles`` to no on this specific (local) repository:

```sh
config config --local status.showUntrackedFiles no
```

## Appendix

### Starting "config" dotfiles setup from scratch

```sh
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
```

### References

* [Atlassian "config" setup for dotfiles](https://www.atlassian.com/git/tutorials/dotfiles)
* Thorsten Ball's [setup post](https://registerspill.thorstenball.com/p/new-year-new-job-new-machine)
