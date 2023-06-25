# oh-my-zsh Customizations

## Theme

Set the theme to use for zsh

```zsh
ZSH_THEME="gianu"
```

## Plugins

Set the plugins to use

```zsh
plugins=(brew git gpg-agent keychain macos mvn sudo vi-mode wd)
```

## Set Custom Location

oh-my-zsh no longer reacts well to overwriting the custom directory. Check this repo out to another
location and set the location in the `.zshrc`
```zsh
ZSH_CUSTOM=~/.ohmyzsh-config
```

## Software Installs

### App Store

Software installs are handled by `brew bundle`.

### Manual

Most software is being installed by `brew bundle`. The following items need to be installed manually:

* Homebrew
* oh-my-zsh
* Java 1.8.0_202
* Upwork

#### Homebrew Packages

Use `brew bundle`
