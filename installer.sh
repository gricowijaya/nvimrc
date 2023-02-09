#!/bin/bash

mv ~/.config/nvim ~/.config/old.nvim
mv ~/nvimrc/ ~/.config/nvim/ 
nvim --headless -c 'PackerClean'
