For the new laptop i.e. from the university for some reason when I installed
the plug in it was saying that the folder where the coc.nvim could not be located
or something related to the coc.nvim is not present.

I checked my this folder where i have all the plug ins

   C:\Users\zubaer01\AppData\Local\nvim-data\plugged

and found that it is there but for some reason neovim was not getting it so
what I did I changed the location where the coc.nvim is by this line in my
vimrc

let g:coc_data_home = "C:\\Users\\zubaer01\\AppData\\Local\\nvim-data\\plugged"

Reference: https://github.com/nix-community/home-manager/issues/1308#issuecomment-793908874

and then it worked (of course do not forget to install the python corresponding
package for coc.nvim that is already documented on my main readme.md)
