# My Spacemacs configuration

[![Built with Spacemacs](https://cdn.rawgit.com/syl20bnr/spacemacs/442d025779da2f62fc86c2082703697714db6514/assets/spacemacs-badge.svg)](http://github.com/syl20bnr/spacemacs)

## Usage

```
git clone https://github.com/emaphp/spacemacs.d .spacemacs.d
```

## About

This is my configuration folder for [Spacemacs](http://spacemacs.org/)! Mostly aimed for web development using PHP and Javascript. It also includes a bunch of snippets for working with Bootstrap 4 and Magento 2.

### Layers

 * html
 * php
 * javascript
 * react
 * go
 * git
 * markdown
 * org
 * docker
 * yaml
 * nginx	
 * version-control
 * syntax-checking

Also includes `vue-mode` for working with with `.vue` files.

## Configuration

### PHP

Make sure you run `php-extras-generate-eldoc` before start using `php-mode`.

### Javascript


### Go

Before starting, make sure these tools are installed on your system.

 * Autocompletion Daemon: `go get -u -v github.com/mdempsky/gocode`
 * Symbol Information: `go get -u -v github.com/rogpeppe/godef`
 * Source Code Guru: `go get -u -v golang.org/x/tools/cmd/guru`
 * Type-safe renaming: `go get -u -v golang.org/x/tools/cmd/gorename`
 * Updates import list: `go get -u -v golang.org/x/tools/cmd/goimports`
 * Meta Linter: `go get -u -v github.com/alecthomas/gometalinter`

`go-metalinter` requires running the following command afterwards: `gometalinter --install --update`. 
**Note**: check that `HOME/go/bin` was added to your `PATH`.

## Features

 * Shows buffer file name on frame title.
 * Shows line numbers.
 * Adds snippets from `.spacemacs.d` folder.
 * Opens Blade templates using `web-mode`.
 * Increase/Decrease font size with C-+/C--.

## Added shortcuts

### General

 * `C-+` / `C--`: Increase/Decrease font size.
 * `SPC o E`: Escapes HTML under the region.
 * `SPC o s`: `just-one-space`.
 * `C-c C-y`: Copies the whole line. Useful for mini buffer content.

### Markdown

 * `SPC o m t`: Generates a table of contents.

### Org

 * `<f12>`: Opens `org-agenda`.
 * `SPC o o l`: Copies the link under the cursor.
 * `SPC o o t`: Cuts an entire org subtree.
 * `SPC o o i`: Inserts an org template.

### Yasnippet

 * `C-c y`: Calls `yas-expand`.
 * `SPC o y i`: Inserts a snippet.
 * `SPC o y n`: Creates a new snippet.

### Spacebadge

This is a small utility that inserts a Spacebadge in webpages, markdown and org documents.

 * `SPC o b m`: Inserts a spacebadge in `markdown-mode`.
 * `SPC o b o`: Inserts a spacebadge in `org-mode`.
 * `SPC o b w`: Inserts a spacebadge in `web-mode`.

## Appendix: Spacemacs useful shortcuts

### General

`SPC f e d`: Opens `spacemacs` configuration file.
`SPC q R`: Restarts `spacemacs`.
`SPC x d w`: Removes trailing whitespaces.
`SPC o s`: Calls `just-one-space`.
`M-:`: Shows the value of a variable.
`C-0` then `M-:`: Prints the value of a variable to the current buffer.

### Buffers

`SPC b s`: Opens the *scratch* buffer.
`SPC b d`: Kills a buffer.
`SPC b e`: Erases content in buffer.
`SPC b Y`: Copies buffer to clipboard.
`SPC b P`: Pastes clipboard content in buffer.

### Files

`SPC f f`: Opens a file on the current directory.
`SPC f s`: Saves the file.
`SPC f f`: Opens a recent file.

### Windows

`SPC w /`: Divides current window vertically.
`SPC w -`: Divides current window horizontally.

### Projects

`SPC p l`: Opens a new layer for a recently opened project.
`SPC p h`: Opens a file on the current project.
`SPC p b`: Opens an already opened buffer on the project.
`SPC s a p`: Finds a file by content on the project.

For switching between projects use `SPC {number}`, where *number* is the layer number that corresponds to the project.

### Git

`SPC g s`: Opens *magit*.
`SPC g t`: Time-machine.

