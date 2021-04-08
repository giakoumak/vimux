# Dependencies:
* Vim >= 8.2
* tmux >= 2.4
* git
* curl
* NodeJS
* npm
* exuberant-ctags
* ccls

# Copy the Vim configuration file to the correct directory.
```
cp vimrc $HOME/.vimrc
```

# Copy the tmux configuration files to the correct directory.
Credits to Gregory Pakosz for the tmux configuration.
The original files can be found on
[this GitHub repository.](https://github.com/gpakosz/.tmux)
```
cp tmux.conf $HOME/.tmux.conf
cp tmux.conf.local $HOME/.tmux.conf.local
```

# Download Vim plugin manager and place it to the correct directory.
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	http://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# Copy Conquer of Completion settings file to the correct directory.
```
cp coc-settings.json $HOME/.vim/
```

# Restart Vim and trigger the installation of plugins.
While in Vim Normal mode, type the following:
* ```:PlugInstall``` and hit Enter.
This will install the plugins that are specified in the beginning of the .vimrc
file.

***(Optional)*** While in Vim normal mode, type any combination of the following
commands to trigger the installation of plugins for the Conquer of Completion
plugin.
* ```:CocInstall coc-java``` and hit Enter.
This will install a Java plugin for CoC.
* ```:CocInstall coc-json``` and hit Enter.
This will install a json plugin for CoC.
* ```:CocInstall coc-texlab``` and hit Enter.
This will install a Latex plugin for CoC.

Note that CoC plugins usually rely on some pre-existing packages.
For instance, a correctly installed JDK is a minimum requirement for the Java
plugin.
Check each plugins official webpage prior to the installation to make sure that
your system meets the recommended requirements.
