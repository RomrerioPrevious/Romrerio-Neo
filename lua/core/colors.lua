vim.opt.termguicolors = true

function SetColor(color)
    color = color or "sonokai"
    vim.cmd.colorscheme(color)
end

SetColor("ayu-mirage")
