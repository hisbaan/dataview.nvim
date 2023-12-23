local M = {}

---@alias WindowKind
---| "float" Open in a floating window
---| "split" Open in a split
---| "vsplit" Open in a vertical split
---| "tab" Open in a new tab

--- @class DataviewConfig
--- @field vault_dir? string Directory to look for notes in
--- @field buffer_kind? WindowKind Type of window to open with compiled dataview result
local defaults = {
    vault_dir = "",
    buffer_type = "float"
}

--- @type DataviewConfig
local config = {}

--- Setup configuration and use defaults for undefined values
--- @param opts? DataviewConfig User configuration
function M.setup(opts)
    opts = opts or {}

    -- error handling
    if not opts.vault_dir then
        error("required configuration option 'vault_dir' not defined")
    end

    -- merge user provided config with the defaults into `config`
    config.vault_dir = vim.fn.expand(opts.vault_dir)
    config.buffer_kind = opts.buffer_kind or defaults.buffer_kind

    -- register commands
    vim.api.nvim_create_user_command(
        "DataviewCompile",
        M.compile_current,
        {
            desc = "View the result of the current dataview query",
            nargs = 0
        }
    )
end

--- Compile and display the current dataview block
function M.compile_current()
    -- get file contents
    -- get cursor location
    -- get the nearest code block (next or nearest?)
    -- ensure that it is of type `dataview`
    -- parse the code block -- look at obsidian-dataview for this
    -- run the query, search for matches with `rg`
end

return M
