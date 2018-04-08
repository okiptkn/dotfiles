![alt text](logo.png "dotfiles")

# DOTFILES
Main dotfiles backup for my current setup, arch and dwm, also [wmutils](https://github.com/wmutils) and [velox](https://github.com/michaelforney/velox). for my custom dwm build see [here](https://github.com/okiptkn/dwmfu)

## Summary
all of these files are mostly self-explanatory, but here are some brief summary of it :

### .config/
#### mpv
simple mpv config, also includes some helpful lua script such as :
* `autoload.lua` auto load media files in current folder into playlist
* `equalizer.lua` display equalizer, `ctrl + E` to toggle
* `navigator.lua` on screen[osc] file navigator, `alt + f` to open. see other keys in `input.conf`
* `visualizer.lua` display visualizer, `c` to cycle/toggle visualizer

| keys                  | function             |
|:----------------------|:---------------------|
| mouse scroll `up/down`| add volume `+/-5`    |
| `End`                 | cycle fullscreen     |
| `Esc` or `q`          | quit mpv             |
| `ctrl + R/L arrow`    | seek bar `+/-5`      |
| `ctrl + up/down arrow`| add volume `+/-10`   |
| `PageUp/Down`         | next/prev chapter    |
| `/`                   | display title        |
| `.`                   | cycle osc visibility |

#### nano
`nanorc` enable syntax highlighting

### .vimrc & .vim/
vim config and some extra plugin installed with [pathogen](https://github.com/tpope/vim-pathogen). list of currently installed plugin :
* [NERDtree](https://github.com/scrooloose/nerdtree) : vim file explorer
* [MRU](https://github.com/vim-scripts/mru.vim)      : list recently opened file

### LICENSE
see [LICENSE](LICENSE) for detailed information
