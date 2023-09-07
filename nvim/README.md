# wivl's Neovim Lua Config

## Install

### Dependencies

To get full functions, you need to install a couple of dependencies.

For macOS:

Install telescope dependencies:

```
brew install ripgrep fd
```

Download and install [JetBrainsMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip) from [Nerd Fonts](https://www.nerdfonts.com/font-downloads) to get icons displayed in neovim correctly.

### TODO: Instruction

## Key Mappings

> \<leader\> key is set to <kbd>SPC</kbd>

|mapping|mode|function|
|-------|----|--------|
|<kbd>SPC</kbd><kbd>p</kbd><kbd>v</kbd>|n|Vim file system|
|<kbd>J</kbd>, <kbd>K</kbd>|v|Move texts around|
|<kbd>SPC</kbd><kbd>p</kbd>|x|Paste but not reflashing the buffer|
|<kbd>SPC</kbd><kbd>y</kbd>|n|Copy to system buffer|
|<kbd>SPC</kbd><kbd>y</kbd>|v|Copy to system buffer|
|<kbd>SPC</kbd><kbd>Y</kbd>|n|Copy to system buffer|
|<kbd>SPC</kbd><kbd>s</kbd><kbd>r</kbd>|n|Global string replace|
|<kbd>SPC</kbd><kbd>f</kbd><kbd>f</kbd>|n|telescope: Find files|
|<kbd>SPC</kbd><kbd>f</kbd><kbd>g</kbd>|n|telescope: Find git files|
|<kbd>SPC</kbd><kbd>f</kbd><kbd>w</kbd>|n|telescope: Find word (using grep)|
|<kbd>SPC</kbd><kbd>g</kbd><kbd>s</kbd>|n|fugitive: Git|
|<kbd>SPC</kbd><kbd>u</kbd>|n|undotree: Toggle|
|<kbd>SPC</kbd><kbd>h</kbd><kbd>a</kbd>|n|harpoon: Add file|
|<kbd>SPC</kbd><kbd>h</kbd><kbd>t</kbd>|n|harpoon: Toggle quick menu|
|<kbd>SPC</kbd><kbd>h</kbd><kbd>1</kbd>|n|harpoon: Go to file 1|
|<kbd>SPC</kbd><kbd>h</kbd><kbd>2</kbd>|n|harpoon: Go to file 2|
|<kbd>SPC</kbd><kbd>h</kbd><kbd>3</kbd>|n|harpoon: Go to file 3|
|<kbd>SPC</kbd><kbd>h</kbd><kbd>4</kbd>|n|harpoon: Go to file 4|


