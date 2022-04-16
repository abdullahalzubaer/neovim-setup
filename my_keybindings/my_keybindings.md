I am afraid that one day I will forget all the keybindings I had. That is why it will be here

| Command | Description | 
| ------- | ----------- |
|`nvim .`| Open everything in the current folder|
|`s` -> Split open, `o` -> Open here, `i` -> open below| Opening files in different split|
|`ctrl + [` / `Escape`| Takes from insert and visual mode to Normal mode|
|`shift + ;`| To command mode where you can exit or save |
|`:q` -> Exit , `:w` -> save current changes, `:q!`-> close nvim without saving, `:wq` -> save and quite a modified file | Quitting and saving|
|`ctrl+w`|move from one split to another|
|`ctrl + h/j/k/l`| move cursor from one split to another, corresponding to the direction of hjkl|
|`shift [` `shift ]`| Go previous blank line, go forward blank line|
|`ctrl + w`, `ctrl + e`| Delete one word before, delete one word forward|
|`r + [any charachter that you want to change]` Done in visual mode and stays in visual mode| go to the letter you wanna change, changing a charachter in visual mode|
|`a` or `i`| From visual to insert mode `a` -> cursor goes to next charachter, `i` cursor goes to current where the cursos is now| 
|`:source %`| To source... make anything effective without closing nvim but by just writing this command|
|`v` highlight the portion of text then `y` yank then coppy paste it to other place `[visual mode] shift+p` | Copy Paste |
|`nvim -o filename_1 filename_2 ... filename_n`|Open multiple files directly on vertical/horizontal split from terminal, small letter 'o' for vertical, capital letter 'O' for horizontal|
|`:qa`| quit all open splits and exit neovim|
|`:only`|close all windows(splits) except the current one|


## Combination of comamnds

How to get multiple cursor

Normal Mode -> Shift+arrow to highlight the word you are looking for -> when you found the ones that you want to change -> press a or i , to go to the insert mode.
