<h1 align="center">dataview.nvim</h1>

A Neovim plugin for executing [obsidian-dataview](https://github.com/blacksmithgu/obsidian-dataview) queries. This plugin is meant to complement the great [obsidian.nvim](https://github.com/epwalsh/obsidian.nvim).

## Features

Coming soon

### Commands

- `:DataviewCompile` to get the result of the current query. This is the query your cursor is over.

### Demo

Coming Soon

## Setup

### Install

Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "hisbaan/dataview.nvim",
    -- only load dataview.nvim for files in your obsidian vault
    event = {
        "BufEnter " .. vim.fn.expand "~" .. "/path-to-my-vault**",
    },
    -- configuration here, see below for full configuration options
    opts = {
        vault_dir = "path/to/vault",
        buffer_type = "float", -- float | split | vsplit | tab
    }
}
```

### Configure

This is a complete list of all the options that can be passed to `require("dataview").setup()` or the lazy `opts` table. The values displayed are the defaults

```lua
{
    -- Required, the path to your obsidian vault against which queries will be run
    vault_dir = "path/to/vault",
    -- Optional, the type of window to open to display the result of a dataview query
    -- One of `float`, `split`, `vsplit`, or `tab`. Defaults to `float`
    buffer_type = "float",
}
```
