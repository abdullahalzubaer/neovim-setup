# Welcome to the real world
prerequisite

Machine I am using

`OS Name: Ubuntu 22.04.2 LTS | OS Type: 64-bit | GNOME Version: 42.5 | Windows System: Wayland`

do it in conda base environment. In base I think we already have curl

1. curl: `sudo apt install curl`
2. git: `sudo apt install git`

Just follow the following steps and you are good to go with neovim and also autocompletion for python

1. Open terminal
2. `sudo snap install nvim --classic`
3. `ls -la`
4. `cd .config`
5. `mkdir nvim`
6. `cd nvim`
7. `nvim init.vim`
8.  Install vim-plug from here using curl: https://github.com/junegunn/vim-plug#unix-linux
9. Copy everything that I have in this directory from `init_linux.vim` to the `init.vim` you created in `step 7` EXCEPT coc extenstion, comment that out
10. `:w`
11. Exit neovim and enter again and write this `:PlugInstall`
12. install node from source https://github.com/nodesource/distributions#using-ubuntu
13. uncomment coc extension in the init.vim 
14. `:w`
15. exit neovim and enter again and write `:PlugInstall`
16. For python install this extension `CocInstall coc-pyright`
17. check health `:checkhealth`
18. if rqeuired install pynvim `pip install pynvim --upgrade`


The End: Now you should have everything working perfectly if not then that's life :)
