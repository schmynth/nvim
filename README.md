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

### important keybindings

Keybindings are in vim notation:  

| vim style    |  translation   |
| -----------  |  -----------   |
| `<C-t>`      |  Ctrl+t        |
| `K`          |  Shift+k       |
| `<M-1>`      |  Alt+1         |  
| `<leader>da` |  Space, then d, then a   |

#### Language server

##### diagnostics

Hover over a symbol with available diagnostics and press K
