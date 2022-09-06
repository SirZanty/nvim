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

## Folding
| Key  | Mapping                                                   |
| ---  | ---                                                       |
| zf#j | creates a fold from the cursor down # lines.              |
| zf/  | string creates a fold from the cursor to string.          |
| zj   | moves the cursor to the next fold.                        |
| zk   | moves the cursor to the previous fold.                    |
| zo   | opens a fold at the cursor.                               |
| zO   | opens all folds at the cursor.                            |
| zm   | increases the foldlevel by one.                           |
| zM   | closes all open folds.                                    |
| zr   | decreases the foldlevel by one.                           |
| zR   | decreases the foldlevel to zero — all folds will be open. |
| zd   | deletes the fold at the cursor.                           |
| zE   | deletes all folds.                                        |
| [z   | move to start of open fold.                               |
| ]z   | move to end of open fold.                                 |

## Telescope
| Key                               | Mapping                  |
| ---                               | ---                      |
| <kbd>leader</kbd> + <kbd>ff</kbd> | Find Files               |
| <kbd>leader</kbd> + <kbd>fg</kbd> | Find Word (live grep)    |
| <kbd>leader</kbd> + <kbd>fb</kbd> | Find Buffer              |
| <kbd>leader</kbd> + <kbd>fh</kbd> | Find Doc Vim (Help Tags) |
| <kbd>leader</kbd> + <kbd>ft</kbd> | Find Use Treesitter      |

## Switch Buffer Tab
| Key                           | Mapping          |
| ---                           | ---              |
| <kbd>Alt</kbd> + <kbd>.</kbd> | Next Buffer      |
| <kbd>Alt</kbd> + <kbd>,</kbd> | Prev Buffer      |
| <kbd>Alt</kbd> + <kbd>></kbd> | Move Next Buffer |
| <kbd>Alt</kbd> + <kbd><</kbd> | Move Prev Buffer |
| <kbd>Alt</kbd> + <kbd>c</kbd> | Close Buffer     |

## Git
| Key                               | Mapping         |
| ---                               | ---             |
| <kbd>leader</kbd> + <kbd>gn</kbd> | Next Hunk       |
| <kbd>leader</kbd> + <kbd>gN</kbd> | Prev Hunk       |
| <kbd>leader</kbd> + <kbd>gp</kbd> | Preview Hunk    |
| <kbd>leader</kbd> + <kbd>gd</kbd> | Show Diff       |
| <kbd>leader</kbd> + <kbd>gi</kbd> | Blame Info Line |

## Mapping lsp-config
| Key                               | Mapping                                     |
| ---                               | ---                                         |
| <kbd>leader</kbd> + <kbd>e</kbd>  | Diagnostic open float                       |
| <kbd>]</kbd> + <kbd>d</kbd>       | Diagnostic goto next (error or warning)     |
| <kbd>[</kbd> + <kbd>d</kbd>       | Diagnostic goto previous (error or warning) |
| <kbd>leader</kbd> + <kbd>q</kbd>  | Diagnostic show list (error or warning) with Trouble |
| <kbd>gd</kbd>                     | lsp buffer definition                       |
| <kbd>gD</kbd>                     | lsp buffer declaration                      |
| <kbd>gi</kbd>                     | lsp buffer implementation                   |
| <kbd>gr</kbd>                     | lsp references with Trouble                 |
| <kbd>K</kbd>                      | lsp buffer hover                            |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>    | lsp buffer signature help                   |
| <kbd>leader</kbd> + <kbd>ca</kbd> | lsp buffer code action                      |
| <kbd>leader</kbd> + <kbd>fm</kbd> | lsp buffer code format                      |

## Mapping hop (Easy Motion)
| Key                              | Mapping    |
| ---                              | ---        |
| <kbd>leader</kbd> + <kbd>cc</kbd> | HopChar2   |
| <kbd>leader</kbd> + <kbd>l</kbd> | HopLine    |
| <kbd>leader</kbd> + <kbd>/</kbd> | HopPattern |

## Mapping dap debug
| Key                                | Mapping               |
| ---                                | ---                   |
| <kbd>F5</kbd>                      | Dap Continue (Start)  |
| <kbd>F10</kbd>                     | Dap Step Over         |
| <kbd>F11</kbd>                     | Dap Step Into         |
| <kbd>F12</kbd>                     | Dap Step Out          |
| <kbd>leader</kbd> + <kbd>dui</kbd> | Toggle Dap UI         |
| <kbd>leader</kbd> + <kbd>di</kbd>  | Eval Current Cursor   |
| <kbd>leader</kbd> + <kbd>db</kbd>  | Dap Toggle Breakpoint |

## Terminal
| Key                                           | Mapping                                                    |
| ---                                           | ---                                                        |
| <kbd>leader</kbd> + <kbd>tb</kbd>             | Open Bottom Terminal                                       |
| <kbd>leader</kbd> + <kbd>tt</kbd>             | Open Float Terminal                                        |
| <kbd>Ctrl</kbd> + <kbd>t</kbd>                | Toggle Terminal                                            |
| <kbd>2</kbd> + <kbd>Ctrl</kbd> + <kbd>t</kbd> | New Split Terminal Bottom. Example: (2<C-t> or 3<C-t>,...) |
| <kbd>Ctrl</kbd> + \                           | Exit Insert Terminal                                       |
| <kbd>Ctrl</kbd> + <kbd>h,j,k,l</kbd>          | Switch Terminal and Vim Buffer                             |

## Format code
> javascript, typescript,react
- Go to project, install `Prettier`
```bash
$ yarn add --dev --exact prettier
```
or
```bash
$ npm install --save-dev --save-exact prettier
```
- Open mode command vim
```vim
:NeoFormat
```
> C#,.Net Core
- <kbd>leader</kbd> + <kbd>fm</kbd> : lsp format code
or use command line: [dotnet format](https://github.com/dotnet/format)
