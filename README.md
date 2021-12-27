# Neovim IDE

https://user-images.githubusercontent.com/64464369/147465193-c67bb486-904b-4cbe-8aad-6e6035ffaf82.mp4

## :warning: Support only Neovim 0.6
## :warning: Support programming language JavaScript, TypeScript, PHP, C, C++

```bash
.
├── configs.vim
├── init.vim
├── install-lsp.sh
├── lua
│   ├── nv-cmp.lua
│   ├── nv-colorizer.lua
│   ├── nv-galaxyline.lua
│   ├── nv-gitsigns.lua
│   ├── nv-indentline.lua
│   ├── nv-lspconfig.lua
│   ├── nv-telescope.lua
│   ├── nv-tree.lua
│   └── nv-treesitter.lua
└── plugins.vim
```

## Install

> Please install Neovim before setting up next step. **[How to install Neovim release?](https://github.com/neovim/neovim/wiki/Installing-Neovim)**

```bash
$ chmod +x install-lsp.sh
$ ./install-lsp.sh
$ nvim
```

## List extension
Vim plugin:

- **[gruvbox](https://github.com/morhetz/gruvbox)**: Color scheme for Vim. [config](https://github.com/phamhiep2506/nvim/blob/88a27d7fd69fa75eab5099378365ebdb8a2d71bf/configs.vim?_pjax=%23js-repo-pjax-container%2C%20div%5Bitemtype%3D%22http%3A%2F%2Fschema.org%2FSoftwareSourceCode%22%5D%20main%2C%20%5Bdata-pjax-container%5D#L1)
- **[vim-commentary](https://github.com/tpope/vim-commentary)**: Comment code for Vim
- **[emmet-vim](https://github.com/mattn/emmet-vim)**: Emmet for vim
- **[vim-easy-align](https://github.com/junegunn/vim-easy-align)**: A Vim alignment plugin

Neovim plugin:

- **[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)**: Icons for Neovim
- **[nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)**: A file explorer tree for Neovim written in lua. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-tree.lua)
- **[barbar.nvim](https://github.com/romgrk/barbar.nvim)**: Tabline file use buffer. [config](https://github.com/phamhiep2506/nvim/blob/88a27d7fd69fa75eab5099378365ebdb8a2d71bf/configs.vim?_pjax=%23js-repo-pjax-container%2C%20div%5Bitemtype%3D%22http%3A%2F%2Fschema.org%2FSoftwareSourceCode%22%5D%20main%2C%20%5Bdata-pjax-container%5D#L19)
- **[galaxyline.nvim](https://github.com/glepnir/galaxyline.nvim)**: Neovim statusline plugin written in lua. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-galaxyline.lua)
- **[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)**: Indent guides for Neovim. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-indentline.lua)
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Git integration for buffers. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-gitsigns.lua)
- **[telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: Find, Preview file. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-telescope.lua)
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Support highlighting code. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-treesitter.lua)
- **[nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)**: Neovim colorizer. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-colorizer.lua)
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Neovim LSP client. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-lspconfig.lua)
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Auto completion plugin for Neovim. [config](https://github.com/phamhiep2506/nvim/blob/master/lua/nv-cmp.lua)
- **[vim-vsnip](https://github.com/hrsh7th/vim-vsnip)**: Snippet plugin for Neovim. [config](https://github.com/phamhiep2506/nvim/blob/5dc083f8e377c6bf4f390079c74b48de99585503/configs.vim?_pjax=%23js-repo-pjax-container%2C%20div%5Bitemtype%3D%22http%3A%2F%2Fschema.org%2FSoftwareSourceCode%22%5D%20main%2C%20%5Bdata-pjax-container%5D#L39)

## Keybinding

:warning: Leader =" " (phím cách trên bàn phím)

### custom
| Command                            | Description                   |
| ---                                | ---                           |
| <kbd>Leader</kbd>+<kbd>f</kbd>     | Format code (JavaScript only) |
| <kbd>Leader</kbd>+<kbd>Enter</kbd> | Turn off highlight search     |
| <kbd>Ctrl</kbd>+<kbd>s</kbd>       | Save File                     |

### nvim-tree.lua
| Command                      | Description          |
| ---                          | ---                  |
| <kbd>Ctrl</kbd>+<kbd>n</kbd> | Toggle file explore  |

### telescope.nvim
| Command                      | Description          |
| ---                          | ---                  |
| <kbd>Ctrl</kbd>+<kbd>p</kbd> | Open find file       |

### barbar.nvim
| Command                      | Description          |
| ---                          | ---                  |
| <kbd>Alt</kbd>+<kbd>.</kbd>  | Next buffer file     |
| <kbd>Alt</kbd>+<kbd>,</kbd>  | Previous buffer file |
| <kbd>Alt</kbd>+<kbd>></kbd>  | Buffer Move Next     |
| <kbd>Alt</kbd>+<kbd><</kbd>  | Buffer Move Previous |
| <kbd>Alt</kbd>+<kbd>1</kbd>  | Buffer Goto 1        |
| <kbd>Alt</kbd>+<kbd>2</kbd>  | Buffer Goto 2        |
| <kbd>Alt</kbd>+<kbd>3</kbd>  | Buffer Goto 3        |
| <kbd>Alt</kbd>+<kbd>4</kbd>  | Buffer Goto 4        |
| <kbd>Alt</kbd>+<kbd>5</kbd>  | Buffer Goto 5        |
| <kbd>Alt</kbd>+<kbd>6</kbd>  | Buffer Goto 6        |
| <kbd>Alt</kbd>+<kbd>7</kbd>  | Buffer Goto 7        |
| <kbd>Alt</kbd>+<kbd>8</kbd>  | Buffer Goto 8        |
| <kbd>Alt</kbd>+<kbd>9</kbd>  | Buffer Goto 9        |
| <kbd>Alt</kbd>+<kbd>c</kbd>  | Buffer Close         |

### nvim-lspconfig
| Command                        | Description              |
| ---                            | ---                      |
| <kbd>gD</kbd>                  | Go to declaration        |
| <kbd>gd</kbd>                  | Go to definition         |
| <kbd>K</kbd>                   | Hover                    |
| <kbd>gi</kbd>                  | Go to implementation     |
| <kbd>Ctrl</kbd>+<kbd>k</kbd>   | Signature help           |
| <kbd>Space</kbd>+<kbd>wa</kbd> | Add workspace folder     |
| <kbd>Space</kbd>+<kbd>wr</kbd> | Remove workspace folder  |
| <kbd>Space</kbd>+<kbd>wl</kbd> | List workspace folder    |
| <kbd>Space</kbd>+<kbd>D</kbd>  | Type definition          |
| <kbd>Space</kbd>+<kbd>rn</kbd> | Rename                   |
| <kbd>Space</kbd>+<kbd>ca</kbd> | Code action              |
| <kbd>gr</kbd>                  | references               |
| <kbd>Space</kbd>+<kbd>e</kbd>  | Diagnostic open float    |
| <kbd>]</kbd>+<kbd>d</kbd>      | Diagnostic goto next     |
| <kbd>[</kbd>+<kbd>d</kbd>      | Diagnostic goto previous |
| <kbd>Space</kbd>+<kbd>q</kbd>  | Diagnostic setloclist    |

## Command Mode

### vim-easy-align
| Command   | Description                                              |
| ---       | ---                                                      |
| Easyalign | [click here](https://github.com/junegunn/vim-easy-align) |
