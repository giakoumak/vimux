## Dependencies
* Vim >= 8.2
* tmux >= 2.4
* git
* curl
* wget
* NodeJS >= 12
* npm
* ack
* exuberant-ctags
* ccls

## Install ZSH and use it as the default shell

* On Ubuntu

  Install ZSH: ```apt install zsh```.

  Change default shell: ```chsh -s $(which zsh)```.

* On MacOS

  **(Optional)** Install iTerm2: ```brew cask install iterm2```.

  Install ZSH: ```brew install zsh```.

  Change default shell: ```chsh -s $(which zsh)```.


## Install OH-My-zsh

Download and install oh-my-zsh: ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"```.

Configure oh-my-zsh themes, plugins, etc by editing the necessary fields of the ```$HOME/.zshrc``` configuration file.

For more information, read the official oh-my-zsh documentation (https://github.com/ohmyzsh/ohmyzsh).

## **(OPTIONAL)** Install powerlevel10k theme for oh-my-zsh

Download and install Powerlevel10k: ```git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k```.

Set ```ZSH_THEME="powerlevel10k/powerlevel10k"``` in ```$HOME/.zshrc``` configuration file.

On the first run, Powerlevel10k will run a configuration wizard to customize your environment and enhance your experience. If it does not trigger automatically, or if you want to reconfigure your environment at any time, run ```p10k configure```.

For more information, read the official Powerlevel10k documentation (https://github.com/romkatv/powerlevel10k).

## **(OPTIONAL)** install ZSH/oh-my-zsh PLUgins

- zsh-autosuggestion

  Download the plugin repository: ```git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions```.

  Add the plugin to the list of autoload plugins (```plugins=(git ...other plugins... zsh-autosuggestions)```), by editing ```$HOME/.zshrc``` configuration file.

  Reset the terminal or open a new session.

  For more information, read the official plugin documentation (https://github.com/zsh-users/zsh-autosuggestions).

- zsh-syntax-highlighting

  Download the plugin repository: ```git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting```.

  Add the plugin to the list of autoload plugins (```plugins=(git ...other plugins... zsh-syntax-highlighting)```), by editing ```$HOME/.zshrc``` configuration file.

  For more information, read the official plugin documentation (https://github.com/zsh-users/zsh-syntax-highlighting).

## INSTALL Vim & TMUX configuration file

From the vimux root directory, run:

- ```cp vimrc $HOME/.vimrc```
- ```cp tmux.conf $HOME/.tmux.conf```
- ```cp tmux.conf.local $HOME/.tmux.conf.local```

Credits to Gregory Pakosz for the tmux configuration. The original files can be found on [this GitHub repository.](https://github.com/gpakosz/.tmux)
## INSTALL Vim-plug plugin manager 
Download plug.vim and put it in the "autoload" directory: ```curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs \
	http://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```.

For more information, read the official vim-plug documentation (https://github.com/junegunn/vim-plug).

## Install Conquer of Completion settings file
From the vimux root directory, run: ```cp coc-settings.json $HOME/.vim/```.

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

`prefix` means you have to either hit `Ctrl+a` or `Ctrl+b`.

`prefix d` detaches from the current session.

`prefix x` kills the current pane.

`prefix e` opens ```$(HOME)/.tmux.conf.local```.

`prefix r` reloads the configuration.

`prefix c` creates new window.

`prefix m` toggles mouse mode on/off.

`prefix -` splits the current pane horizontally.

`prefix |` splits the current pane vertically.

`prefix +` maximizes the current pane in a new window (repeat to undo).

`prefix Space` changes the layout of the current window (needs at least two panes).

`prefix <` swaps the current pane with the previous one (needs at least two panes).

`prefix >` swaps the current pane with the next one (need at least two panes).

`Shift Left-Arrow` selects the previous window.

`Shift Right-Arrow` selects the next window.
