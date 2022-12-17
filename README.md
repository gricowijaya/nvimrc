# First Insight

This repo is neovim configuration based on the quick.nvim repo by albingroen
If you interest to learn the quick.nvim you can watch this [YouTube Demo](https://www.youtube.com/watch?v=OhbgZbORFd4)
and the repo is from here : https://github.com/albingroen/quick.nvim

What i like from the quick.nvim repo is that is using a minimal configuration
but what i think is better is using native lsp instead of using coc

## First Install

I should recommend you do `:checkhealth` every warning should be gone. 

then do `:PackerInstall`

After that do `:LspInstall` to install the language server that you want

## Main Keybinding

Using this configuration there are a few features that i found pretty useful with the nativelsp such as `hover()`, `definition()`, `declaration` and more. Here are the Keybindings:

LSP Features 

|Key |Function|
|---|---|
|`gD`|get Declaration|
|`gd`|get Definition|
|`gH`|get Signature Help|
|`gh`|get Definition in Hover Mode|
|`gi`|get Implementation|
|`gdf`|get Type Definition|
|`gwa`|create workspace folder|
|`gwr`|remove workspace folder|
|`gwr`|remove workspace folder|
|`gwl`|list workspace folder|
|`gcc`|compile C program (must use `main.c` file )|
|`ggo`|compile Go program (must use `main.go` file )|
|`grn`|Rename symbol (such as variables etc)|
|`gr`|Get references of symbol|
|`ge`|Get line diagnostics|
|`<space>ff`|Code Auto Formatting|


## Todo 

* More Intuitive 
* Create the Documentation of the Mapping 

