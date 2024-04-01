# Neovim Config

My personal neovim config.

## Structure

+ `lua/config/`: General NeoVim configuration
    - `init.lua`: main file called for lua config
    - `remap.lua`: key bindings and remappings for (neo)vim
    - `settings.lua`: general settings for (neo)vim
    - `packer.lua`: configuration for Packer: package manager for neovim
+ `after/plugin/`: Any plugin configurations
+ `/plugin/`: Packer auto-generated files (created when calling `:PackerSync`)

## Installing

1. Install neovim on your local machine.
2. Install (Packer)[https://github.com/wbthomason/packer.nvim]
3. Locate the neovim config directory (usually `~/.config/nvim/`).
4. Clone this repository into the above directory.
5. Navigate to the `lua/config/packer.lua` file, open with neovim (some errors
   may pop up due to config files of uninstalled plugins) source the file with
   `:so` and run `:PackerSync`.

