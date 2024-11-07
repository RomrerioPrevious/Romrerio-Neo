function create_term(path)
    require("toggleterm").setup ({
        open_mapping = [[<c-\>]],
        close_mapping = [[<c-\>]],
        highlights = {
            
        },
        shell = path,
    })    
end

local osName = os.getenv("OS")

if osName == "Windows_NT" then 
   create_term("C://Windows//System32//WindowsPowerShell//v1.0//powershell.exe") 
else
    create_term(vim.o.shell)
end

function _G.set_terminal_keymaps()
    local opts = {buffer = 0}
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
