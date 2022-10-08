# IDE-like Vim editor
## Summary
Hi everyone! In this folder you'll find:
- The .vimrc file with my personalized configuration.
- A bash script to create/initialize the directory in your home dir.

## Build

To properly set Vim you would need to copy/download the .vimrc and paste it in your home dir:
```
cp .vimrc $HOME/.vim
```
Then you can run 'vim_init.sh' to automatically install all the listed plugins and set up the directory tree for .vim. To do that you'll probably need to
set the .sh as an executable:
```
chmod +x vim_init.sh
```
And then finally:
```
sudo ./vim_init.sh
```

#### Thanks for passing by!
