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
|`x` in Normal Mode| Equivalent to delete single charachter and more|
|`o` in Normal Mode| Will creae a new line on the next line and go to insert mode - you can start writing.|
|`shift+o` i.e. Capital O alphabet in Normal Mode| Will creae a new line on the previous line and go to insert mode - you can start writing.|
|`shift+5` i.e. `%` |To jump to the matchin bracket/brace|
|`shift+.` i.e. `>`in visual mode | After selecting block of code in visual mode move the block of code to the right with proper indentation I think I had 4 spaces, check my vimrc|
|`shift+,` i.e. `<`in visual mode | After selecting block of code in visual mode move the block of code to the left with proper indentation I think I had 4 spaces, check my vimrc|
|`ctrl + o + o`| create and go to new line with the cursor from the current place where the cursor is (life is strange)| 
|`:TR`| open terminal:|
|`d+i+w -- c+i+2`| [visual mode] Delete the current word and remain in visual mode, delte the current word and go to insert mode - Does not matter where the curosr is as long as it is in any part of the word |
|`shift+} -- shift + {` [visual mode]| cursor goes down -- and cursor goes up (based on blank lines) |

## Combination of comamnds

How to get multiple cursor -> [Link](https://github.com/mg979/vim-visual-multi)

Normal Mode -> Shift+arrow to highlight the word you are looking for -> when you found the ones that you want to change by pressing `n` to go forward, and `N` to go backword> press a or i , to go to the insert mode.

