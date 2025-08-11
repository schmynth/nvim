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
|| **general** |
|`zR` | Open all folds |
|`zM`| Close all folds|
|`za`| Toggle fold under cursor|
|`zc`| Close one fold|
|`zo`| Open one fold|
|| **autocomplete** |
|`<C-n>`| **n**ext autocomplete suggestion |
|`<C-p>`| **p**revious autocomplete suggestion |
|| **diagnostics** |
|`<leader>ca`| show **c**ode **a**ctions |
|| **vimtree** |
|`<A-e>`|open vimtree |
|`<C-t>`|open file in new **t**ab |
|`a` | **a**dd new file |
|| **toggleterm** |
|`<A-d>`|toggle terminal visibility|
|| **jumplist** |
|`<C-O>`|go to older jump position in jumplist|
|`<C-I>`|go to newer jump position in jumplist|

### useful commands

| command | purpose |
| --- | --- |
| ```:nmap <leader>ca``` | show mapping of `<leader>ca` |


### new (for me) concepts to practice

jump with relative line numbers
change until end of word with `ce`  
change entire line with `cc`  
delete everything until an x occurs with `dfx`  

