## Dependencies
* Vim >= 8.2
* tmux >= 2.4
* git
* curl
* wget
* NodeJS >= 12
* npm
* exuberant-ctags
* ccls

## Install ZSH and use it as the default shell

* On Ubuntu

  Install ZSH

  ```apt install zsh```

  Change default shell

  ```chsh -s $(which zsh)```

* On MacOS

  **(Optional)** Install iTerm2

  ```brew cask install iterm2```

  Install ZSH

  ```brew install zsh```

  Change default shell

  ```chsh -s $(which zsh)```

## Install OH-My-zsh

Download and install oh-my-zsh

```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```

Configure oh-my-zsh themes, plugins, etc by editing the necessary fields of the ```$(HOME)/.zshrc``` configuration file

For more information, read the official oh-my-zsh documentation (https://github.com/ohmyzsh/ohmyzsh)

## **(OPTIONAL)** Install powerlevel10k theme for oh-my-zsh

Download and install Powerlevel10k

```git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k```

Set ```ZSH_THEME="powerlevel10k/powerlevel10k"``` in ```$(HOME)/.zshrc``` configuration file

For more information, read the official Powerlevel10k documentation (https://github.com/romkatv/powerlevel10k)

## INSTALL Vim configuration file

```
cp vimrc $HOME/.vimrc
```

## INSTALL tmux configuration files

Credits to Gregory Pakosz for the tmux configuration. The original files can be found on [this GitHub repository.](https://github.com/gpakosz/.tmux)
```
cp tmux.conf $HOME/.tmux.conf
cp tmux.conf.local $HOME/.tmux.conf.local
```

## Download Vim plugin manager and place it to the correct directory
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	http://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Copy Conquer of Completion settings file to the correct directory
```
cp coc-settings.json $HOME/.vim/
```

## Restart Vim and trigger the installation of plugins
While in Vim Normal mode, type the following:
* ```:PlugInstall``` and hit Enter.
This will install the plugins that are specified in the beginning of the .vimrc file.

***(Optional)*** While in Vim normal mode, type any combination of the following commands to trigger the installation of plugins for the Conquer of Completion plugin.

* ```:CocInstall coc-java``` and hit Enter.
This will install a Java plugin for CoC.
* ```:CocInstall coc-json``` and hit Enter.
This will install a json plugin for CoC.
* ```:CocInstall coc-texlab``` and hit Enter.
This will install a Latex plugin for CoC.

Note that CoC plugins usually rely on some pre-existing packages. For instance, a correctly installed JDK is a minimum requirement for the Java plugin. Check each plugins official webpage prior to the installation to make sure that your system meets the recommended requirements.

## List of TMUX KEY Bindings

`prefix` means you have to either hit `Ctrl+a` or `Ctrl+b`

`prefix d` detach from the current session

`prefix x` kill the current pane

`prefix e` open ~/.tmux.conf.local

`prefix r` reload the configuration

`prefix c` create new window

`prefix m` toggle mouse mode on/off

`prefix -` split the current pane horizontally

`prefix |` split the current pane vertically

`prefix +` maximize the current pane in a new window (repeat to undo)

`prefix Space` change the layout of the current window (need at least two panes)

`prefix <` swap the current pane with the previous one (need at least two panes)

`prefix >` swap the current pane with the next one (need at least two panes) 

`Shift Left-Arrow` select the previous window

`Shift Right-Arrow` select the next window