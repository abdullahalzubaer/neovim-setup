# Things required for me to make this plugin work


Step 1: Install nodejs here (LTS), https://nodejs.org/en/download/ (Tick-> Automatically install the necessary tools..) 

Step 2: Allow installing additional tools that prompts up

Now inside neovim

Step 3: Add this plugin in your vimrc and install it the usual way
```
Plug 'neoclide/coc.nvim', {'branch': 'release'}
```

Step 4: Check the health by 
```
:checkhealth
```

Step 5: If everything is written okay realted to coc and python provider then you are good to go I think (jumpt to step 8 in this case), but for me it was not like that so I had install few things

Step 6: Support for python plugins in neovim
  ```
  pip install pynvim 
  ```
Step 7: Required for all the suggestions that I was looking for so anxiously.. if not installed already
  ```
  pip install jedi 
  ```

Step 8: In your neovim run the following command for python 3.X (for other language look at this link please https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions

  ```
  :CocInstall coc-pyright
  ```
  
Step 9: Enjoy autcompletion for python

---

Reference : https://github.com/neoclide/coc.nvim
