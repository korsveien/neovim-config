Clone this repo to `$HOME/.config/nvim`

## Installing NeoVim on Ubuntu
```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```
### Prerequisites for the Python modules:

``sudo apt-get install python-dev python-pip python3-dev python3-pip``


### Deoplete
```pip3 install neovim```

And run ``:UpdateRemotePlugins`` and restart neovim


### Run neovim when entering `vim` in a terminal

If you want to use Neovim for some (or all) of the editor alternatives, use the following commands:

```
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor
```
