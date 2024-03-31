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
2. Locate the neovim config directory (usually `~/.config/nvim/`).
3. Install Packer
4. Clone this repository into this location.
5. Navigate to the `lua/config/packer.lua` file, source the file with `:so` and
   run `:PackerSync`.

