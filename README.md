# Neovim-Setup for Windows 10



Disclaimer: I know nothing about vim (for real no joke)

---


In this repository, I will provide a step-by-step process to set up Neovim for Windows 10. It took me a while to get it to work with intense help from the internet. When I first came across vim editor, I was really fascinated and enchanted by the whole idea of using a keyboard with so many shortcuts that will make coding a lot quicker and most importantly enjoyable.

---



Step 1: Download NEOVIM: https://github.com/neovim/neovim/releases


(You can also add bin folder's location of neovim to your "System variable" so that you can access neovim with "nvim" from the terminal from anywhere)

  * Add the location of the Neovim's bin folder - for me it was this "C:\Program Files\Neovim\Neovim\bin"

(Here on, assuming you have set the path)

Step 2: For some reason I did not have the vimrc file (my vimrc is provided in this repository, if you want you can use that one). Therefore:
  
  1. Navigate to "C:\Users\USERNAME\AppData\Local\nvim"
  2. Create init.vim
  
Step 3: Launch neovim from terminal with this command
```
  nvim
```
Step 4: Edit your vimrc file, which will contain all the plugins and other settings with this command
```
  :e $MYVIMRC
``` 
 
Step 5: The usual edit, save, quite and that's it. And when you restart your neovim you are good to go.


---

From here on assuming neovim is working, there are a lot of good tutorials available online to follow and to proceed further, for example installing packages, navigating and much more.

Also, if I personally find some plugins to install was difficult I will add the instructions of how to make that plugins work in this repository, like I did for coc.nvim (which is for autocompletion mainly I guess)




---

Reference: Thanks to "sharifee" for the tutorial (the only one I found to be helpful) and for his kind answers to the comments, from where I actually got neovim to work :)

https://www.youtube.com/watch?v=h6EceMac8eE





