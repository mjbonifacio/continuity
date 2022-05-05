# continuity
Dotfiles and other configuations that should live with me across machines. This is mostly Mac specific setup.

## Setup Scripts
TODO: Setup an Ansible playbook to take care of this

### Mac
1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), which includes the `zsh` shell.
2. Install Homebrew.
3. Run the setup script, `zsh ~/continuity/mac-setup.bash`.

That should be it! Anything other manual requirements are below. It's not idempotent... but that's something that can be improved :)

### Ubuntu
I gave my first go at a repeatable Ubuntu setup script. As of 9 Nov 2019, it's a prerequisite that this repository is cloned, all dotfiles and scripts are in the root of this project, and the script is executed from here. As an example, you should just be able to:
```
apt update
apt install git -y
git clone https://github.com/MJBonifacio/continuity.git ~/continuity
cd ~/continuity
bash ubuntu-setup.bash
```

and things should work! It's probably easily adaptable for other Linux distros, but I haven't tried. (Just run `common-setup.bash`)

## Fonts I like
`Monaco` is pretty nice.

## Installing stuff
### GUIs
* Insomnia REST Client
* MongoDB Compass

### IDEs
* Atom
* Goland
* RubyMine
* Whatever JetBrains IDE for that language

### iTerm2
* [iTerm2](https://www.iterm2.com) - Guake like terminal
#### Import Preferred Profile
1. Import my preferred Gruvbox profile: `Profiles -> Other Actions -> Import JSON Profiles`, then load a profile from `./iterm`.
2. Set it as the default profile: `Profiles -> Other Actions -> Set as Default`

#### Import/Set Keybindings
1. Import Keybindings at `Keys -> Presets -> Import`, then load the keymap in `./iterm`.
2. Set the dedicated toggle key at `Keys -> Hotkey -> Toggle Show/hide all windows with a system-wide hotkey`, as `option + z`.

#### Notes
Gruvbox colors from [github](https://github.com/morhetz/gruvbox-contrib).

## General Setup

### git
1. Set config (name and email address)

## vim
### Using ctags
You can generate tags in a project's root and may need to create an alias for this version.
```
alias gentags="ctags -R ."
gentags
```

## Possibly annoying things
#### Problem: can't paste between vim sessions
It's possible that your vim doesn't have `has('clipboard')==1`. Echo that from vim and troubleshoot (might be as simple as a `brew install vim` (to install MacVim) and adding an alias to `.zshrc.local`).
