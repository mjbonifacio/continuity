# continuity
Dotfiles and other configuations that should live with me across machines. This is mostly Mac specific setup.

## Setup Scripts
TODO: Setup an Ansible playbook to take care of this

### Mac
1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), which includes the `zsh` shell.
2. Install Homebrew.
3. Install some things that will require us to link exact versions:
```
brew reinstall python3
brew install macvim
```
4. Add the install locations to your .zshrc.local: 
```
brew info macvim
echo alias vim=/opt/homebrew/Cellar/macvim/9.1.0/bin/vim >> ~/.zshrc.local
```
5. Run the setup script, `zsh ~/continuity/mac-setup.bash`.

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
  * And potentially export the collection of requests I may have been working with
* MongoDB Compass

### IDEs
* Goland
* RubyMine
* Whatever JetBrains IDE for that language
* VS Code

#### Plugins
- IdeaVim

#### Setting up JetBrains IDEs to launch from command line
Create a small script to launch the IDE at `/usr/local/bin/goland`, for example ([guide](https://www.jetbrains.com/help/ruby/working-with-the-ide-features-from-command-line.html#standalone))

```
#!/bin/sh

open ~/Applications/JetBrains\ Toolbox/GoLand.app/ --args "$@"
```

then make it executable:

```
chmod +x /usr/local/bin/goland
```

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

## Other Tools
### Kubernetes
Lots of little stuff here:
- Krew
- kubectx (ctx)
- kubens (ns)
- k9s

## Possibly annoying things
#### Problem: can't paste between vim sessions
It's possible that your vim doesn't have `has('clipboard')==1`. Echo that from vim and troubleshoot (might be as simple as a `brew install vim` (to install MacVim) and adding an alias to `.zshrc.local`).
