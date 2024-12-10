require'window-picker'.setup({
    autoselect_one = false,
    include_current = false,
    filter_rules = {
        bo = {
            filetype = {'neo-tree', "neo-tree-popup", "notify"},
            buftype = {'terminal', "quickfix"}
        }
    },
    other_win_hl_color = '#e35e4f'
})
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.fn.sign_define("DiagnosticSignError",
                   {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
                   {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
                   {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
                   {text = "", texthl = "DiagnosticSignHint"})

require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "rounded",
    default_component_configs = {
        git_status = {
            symbols = {
              -- Change type
              added     = "✚", -- or ", but this is redundant info if you use git_status_colors on the name
              modified  = "", -- or ", but this is redundant info if you use git_status_colors on the name
              deleted   = "✖",-- this can only be used in the git_status source
              renamed   = "󰁕",-- this can only be used in the git_status source
              -- Status type
              untracked = "",
              ignored   = "",
              unstaged  = "",
              staged    = "",
              conflict  = "",
            },
          },
    },
    modified = {
        symbol = "[+]",
        highlight = "NeoTreeModified",
    },
    window = {
          position = "left",
          width = 35,
    },
    filesystem = {
         filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_by_name = {
                -- '.git',
                -- '.DS_Store',
                -- 'thumbs.db',
            },
            never_show = {},
        },
    },
})
