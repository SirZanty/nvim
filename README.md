# Nvim config

![vim](https://user-images.githubusercontent.com/64464369/186681015-f4711c1a-c291-44c2-af12-073e2c95f87a.png)

- Support `javascript`, `typescript`, `react`, `c`, `c#`, `bash`, `tailwindcss`, `html`, `css`, `sass`, `emmet`
- Support transparent background

## Install
- :warning: Backup your configuration before installation
- :warning: Open neovim command mode use <kbd>:</kbd>
```bash
$ pip install neovim
$ ln -s ~/dotfiles/.config/nvim ~/.config
$ nvim
# Command mode
  :PackerInstall # Install plugin
```

## Vim action select/yank/delete content between brackets

| Action  | Command | Bracket   |
| ---     | ---     | ---       |
| `v,y,d` | `i`     | `{, (, [` |
| `v,y,d` | `i`     | `}, ), ]` |

## Mapping surround.vim

- cs: change surround
- ds: delete surround
- ys: you surround

| Old text            | Command | New text             |
| ---                 | ---     | ---                  |
| "Hello World!"      | cs"'    | 'Hello World!'       |
| 'Hello World!'      | cs'<q>  | <q>Hello World!</q>  |
| <q>Hello World!</q> | cst"    | "Hello World!"       |
| "Hello World!"      | dst"    | Hello World!         |
| Hello World!        | ysiw]   | [ Hello ] World!     |
| [ Hello ] World!    | yss)    | ( [ Hello ] World! ) |

> :warning: Use the closing `), },...` not insert space

- In visual mode, a simple `S` with an argument wraps the selection.

| Old text            | Command | New text             |
| ---                 | ---     | ---                  |
| `Hello World!`      | S"      | "Hello World!"       |

## Mapping neovim
| Key                                  | Mapping                        |
| ---                                  | ---                            |
| <kbd>></kbd>                         | Indent block right             |
| <kbd><</kbd>                         | Indent block left              |
| <kbd>n</kbd>                         | Next word search               |
| <kbd>N</kbd>                         | Previous word search           |
| <kbd>K</kbd>                         | Move line up                   |
| <kbd>J</kbd>                         | Move line down                 |
| <kbd>leader</kbd> + <kbd>Enter</kbd> | Disable highlight search       |
| <kbd>Ctrl</kbd> + <kbd>n</kbd>       | Toggle NvimTree(File explorer) |
| <kbd>Ctrl</kbd> + <kbd>h,j,k,l</kbd> | Switch Split Window            |
| <kbd>leader</kbd> + <kbd>v</kbd>     | New Split Vertical             |
| <kbd>leader</kbd> + <kbd>x</kbd>     | Switch Split Horizontal        |
| <kbd>leader</kbd> + <kbd>sv</kbd>    | Source reload vim config       |
| <kbd>-</kbd> or <kbd>+</kbd>         | Increment/Decrement number     |
| <kbd>Ctrl</kbd> + <kbd>a</kbd>       | Select All                     |
| <kbd>Ctrl</kbd> + <kbd>s</kbd>       | Save File                      |

## Telescope
| Key                               | Mapping                  |
| ---                               | ---                      |
| <kbd>leader</kbd> + <kbd>f</kbd>  | Telescope                |

## Switch Buffer Tab
| Key                              | Mapping          |
| ---                              | ---              |
| <kbd>Alt</kbd> + <kbd>.</kbd>    | Next Buffer      |
| <kbd>Alt</kbd> + <kbd>,</kbd>    | Prev Buffer      |
| <kbd>Alt</kbd> + <kbd>></kbd>    | Move Next Buffer |
| <kbd>Alt</kbd> + <kbd><</kbd>    | Move Prev Buffer |
| <kbd>Alt</kbd> + <kbd>c</kbd>    | Close Buffer     |
| <kbd>leader</kbd> + <kbd>b</kbd> | BufferLine       |

## Git
| Key                               | Mapping         |
| ---                               | ---             |
| <kbd>leader</kbd> + <kbd>g</kbd>  | Gitsigns        |

## Mapping lsp-config
| Key                               | Mapping                                     |
| ---                               | ---                                         |
| <kbd>leader</kbd> + <kbd>l</kbd>  | LSP                                         |
| <kbd>]</kbd> + <kbd>d</kbd>       | Diagnostic goto next (error or warning)     |
| <kbd>[</kbd> + <kbd>d</kbd>       | Diagnostic goto previous (error or warning) |
| <kbd>K</kbd>                      | Lsp buffer hover                            |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>    | Lsp buffer signature help                   |

## Mapping hop (Easy Motion)
| Key                              | Mapping |
| ---                              | ---     |
| <kbd>leader</kbd> + <kbd>j</kbd> | Jump    |

## Mapping dap debug
| Key                                | Mapping               |
| ---                                | ---                   |
| <kbd>F5</kbd>                      | Dap Continue (Start)  |
| <kbd>F10</kbd>                     | Dap Step Over         |
| <kbd>F11</kbd>                     | Dap Step Into         |
| <kbd>F12</kbd>                     | Dap Step Out          |
| <kbd>leader</kbd> + <kbd>d</kbd>   | Dap                   |

## Terminal
| Key                                           | Mapping                                                    |
| ---                                           | ---                                                        |
| <kbd>leader</kbd> + <kbd>t</kbd>              | Terminal                                                   |
| <kbd>Ctrl</kbd> + <kbd>t</kbd>                | Toggle Terminal                                            |
| <kbd>2</kbd> + <kbd>Ctrl</kbd> + <kbd>t</kbd> | New Split Terminal Bottom. Example: (2<C-t> or 3<C-t>,...) |
| <kbd>Ctrl</kbd> + \                           | Exit Insert Terminal                                       |
| <kbd>Ctrl</kbd> + <kbd>h,j,k,l</kbd>          | Switch Terminal and Vim Buffer                             |
