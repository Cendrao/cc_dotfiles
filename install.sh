#!/bin/sh

if [ ! -d "$HOME/.cc_dotfiles" ]
then
  echo "Installing Campus Code Dotfiles"
  echo "We'll install:"
  echo "  - tmux"
  echo "  - silver searcher"
  echo "  - zsh"
  echo "  - vim (vim-gnome | macvim)"
  echo "  - google-chrome (mac)"
  echo "  - iterm2 (mac)"
  echo "  - atom (mac)"

  case "$(uname -s)" in
    Darwin)
      brew install asdf
      asdf plugin-add ruby
      asdf install ruby 2.7.1
      ;;
    Linux)
      git clone https://github.com/asdf-vm/asdf.git ~/.asdf
      cd ~/.asdf
      git checkout "$(git describe --abbrev=0 --tags)"
      echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
      echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
      asdf plugin-add ruby
      asdf install ruby 2.7.1
      ;;
    CYGWIN* | MSYS*)
      echo 'You are using a Windows which is not recommended to use with out dotfiles.'
      echo 'Abort installation'
      return
      ;;
    *)
      echo 'Operational system not recognized, aborting installation'
      ;;
  esac
  git clone --depth=10 https://github.com/cendrao/cc_dotfiles.git "$HOME/.cc_dotfiles"
  cd "$HOME/.cc_dotfiles"
  rake install
  echo "Dont forget to install FiraCode font https://github.com/tonsky/FiraCode"
else
  echo "You already have Campus Code Dotfiles installed."
fi
