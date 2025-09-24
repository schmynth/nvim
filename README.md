# my neovim setup

## installation

This repository is my neovim config files. To use it:  
```cd ~/.config/ && git clone https://github.com/schmynth/nvim```  

## config files structure

The main config file is ```init.lua```. This file imports secondary config files like includes.  
These are:  
Language server config files in: ```lsp/```  
General lsp configuration in ```lua/config/lsp.lua```  
Plugins, themes, harpoon and toggleterm config files in ```lua/sebastian/```  



## usage

This file is a guide to using nvim.  

Keybindings are in vim notation:  

| vim style    |  translation   |
| -----------  |  -----------   |
| `<C-t>`      |  Ctrl+t        |
| `K`          |  Shift+k       |
| `<M-1>`      |  Alt+1         |  
| `<leader>da` |  Space, then d, then a   |
| `i<CR>`      |  i, then Enter ("Carriage Return") |

### important keybindings

| keybind | function |
| - | - |
|| --- **GENERAL** --- |
|`gc`| Comment up to movement|
|`gck`| Comment this line and line below |
|`gc5j`| Comment 5 lines down |
|| --- **FOLDS** --- |
|`zR` | Open all folds |
|`zM`| Close all folds|
|`za`| Toggle fold under cursor|
|`zc`| Close one fold|
|`zo`| Open one fold|
|| --- **AUTOCOMPLETE** --- |
|`<C-n>`| **n**ext autocomplete suggestion |
|`<C-p>`| **p**revious autocomplete suggestion |
|| --- **DIAGNOSTICS**  ---|
|`<leader>ca`| show **c**ode **a**ctions |
|| --- **VIMTREE** --- |
|`<A-e>`|open vimtree |
|`<C-t>`|open file in new **t**ab |
|`a` | **a**dd new file |
|| --- **TOGGLETERM** --- |
|`<A-d>`|toggle terminal visibility|
|| --- **jumplist** --- |
|`<C-O>`|go to older jump position in jumplist|
|`<C-I>`|go to newer jump position in jumplist|
|| **LSP** |
|`grn`|rename symbol globally|

### useful commands

| command | purpose |
| --- | --- |
| ```:nmap <leader>ca``` | show mapping of `<leader>ca` |


### new (for me) concepts to practice

jump with relative line numbers
change until end of word with `ce`  
change entire line with `cc`  
delete everything until an x occurs with `dfx`  
repeat last fx movement with `;` (forwards) `,` backwards
"mini" plugin:
    Add/delete/replace surroundings (brackets, quotes, etc.)  
    
    `saiw)` - [S]urround [A]dd [I]nner [W]ord [)]Paren
        `saiw(` fügt spaces zwischen Wort und Klammern hinzu  
    `saiw)` tut das nicht  
    `sd'`   - [S]urround [D]elete [']quotes
    `sr)'`  - [S]urround [R]eplace [)] with [']


# lua

[lua guide](https://learnxinyminutes.com/lua/).  
To learn more about vim lua integration: `:help lua-guide` [(html version)](https://neovim.io/doc/user/lua-guide.html)



