# My Config Vscode

## Plugin
- [Vscode Vim](https://github.com/VSCodeVim/Vim)
- [Gruvbox Theme](https://github.com/jdinhify/vscode-theme-gruvbox)

## Install
### Linux
```bash
$ ln -s settings.json ~/.config/Code/User/
$ ln -s keybindings.json ~/.config/Code/User/
```
### Windows
:warning: Run Administrator
:warning: Change "hiep" to user name PC
```bash
New-Item -ItemType SymbolicLink -Path C:\Users\hiep\AppData\Roaming\Code\User\settings.json -Value C:\User\hiep\vscode\settings.json
```
```bash
New-Item -ItemType SymbolicLink -Path C:\Users\hiep\AppData\Roaming\Code\User\keybindings.json -Value C:\User\hiep\vscode\keybindings.json
```
## Mapping

### Vim
:warning: Normal Mode
|           Syntax                              |    Description        |
|-----------------------------------------------|-----------------------|
|<kbd>Ctrl</kbd>+<kbd>h</kbd>                   | Select Window Left    |
|<kbd>Ctrl</kbd>+<kbd>j</kbd>                   | Select Window Down    |
|<kbd>Ctrl</kbd>+<kbd>k</kbd>                   | Select Window Up      |
|<kbd>Ctrl</kbd>+<kbd>l</kbd>                   | Select Window Right   |
|<kbd>Ctrl</kbd>+<kbd>s</kbd>                   | Save File             |
|<kbd>Ctrl</kbd>+<kbd>p</kbd>                   | Find File             |
|<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>p</kbd>  | Show All Command      |
|<kbd>Leader</kbd>+<kbd>v</kbd>                 | Split Vertical        |
|<kbd>Leader</kbd>+<kbd>h</kbd>                 | Split Horizontal      |
|<kbd>Shift</kbd>+<kbd>k</kbd>                  | Hover Show Document   |
|<kbd>Ctrl</kbd>+<kbd>k</kbd>                   | Signature Help        |
|<kbd>Leader</kbd>+<kbd>Enter</kbd>             | Disable Highlight     |
|<kbd>]</kbd>+<kbd>d</kbd>                      | Next Error            |
|<kbd>[</kbd>+<kbd>d</kbd>                      | Prev Error            |
|<kbd>g</kbd>+<kbd>d</kbd>                      | Go to Definition      |

:warning: Visual Mode
|           Syntax                              |    Description        |
|-----------------------------------------------|-----------------------|
|<kbd>Shift</kbd>+<kbd>.</kbd>                  | Tab Indent Block      |
|<kbd>Shift</kbd>+<kbd>,</kbd>                  | Tab Un-Indent Block   |
|<kbd>Shift</kbd>+<kbd>k</kbd>                  | Move Visual Block Up  |
|<kbd>Shift</kbd>+<kbd>j</kbd>                  | Move Visual Block Down|

### Keybinding
|           Syntax                              |    Description        |
|-----------------------------------------------|-----------------------|
|<kbd>Alt</kbd>+<kbd>.</kbd>                    | Next Tab Left         |
|<kbd>Alt</kbd>+<kbd>,</kbd>                    | Next Tab Right        |
|<kbd>Alt</kbd>+<kbd>c</kbd>                    | Close Tab             |

:warning: Only Explorer Mode
|           Syntax                              |    Description        |
|-----------------------------------------------|-----------------------|
|<kbd>Ctrl</kbd>+<kbd>b</kbd>                   | Open Explorer         |
