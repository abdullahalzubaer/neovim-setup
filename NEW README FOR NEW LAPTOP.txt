Things that I had to do to install neovim to my new office laptop.

NOTE: THis is not a stand alone readme. You must read the one that is on my github,
which is the general one, and read the one with vim-plug readme also.

All these three readme works together. See ya ! :)

1. Download neovim from the github page. I got it from here and just run it
as it says on the documentation

https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-download

2. Create a folder called nvim ( I did not have this but we need this) at this
location

   C:\Users\zubaer01\AppData\Local

and then create the two below file inside it

    coc-settings.json
    init.vim (THIS IS YOUR VIMRC)


3. then install the vim-plug from the website

   https://github.com/junegunn/vim-plug#windows-powershell-1

4. For some reason it was not working for me so I had do something extra
    a. Create a folder called .vim at this location
       C:\Users\zubaer01
    and copy the thing that you got from installing the vim-plug inside that
    ("autoload" folder only). I found this on google search but now cant locate
    who gave this beautiful answer.

5. Now you are good to go to configure your neovim and install all the packages
except coc.nvim.

6. Copy all the content that you have from the vimrc file that is uploaded on
github except the plug in that is related to coc. Save the file, and restart nvim
and write this :PlugInstall. You are good to go so far now without autocompletion

7. Now to install Coc read the other readme I have for coc specifically on github
. In summary install the nodejs and yes you do have to install everything
they ask for (for example even though I have installed anacaonda before with
python I had to install new python that nodejs required - maybe I do not need
it but I was too tired to do more research like what to do and what not to do
my head i hurting - and feeling strange)

8. The end for now
