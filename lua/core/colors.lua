vim.opt.termguicolors = true

function SetColor(color)
    color = color or "sonokai"
    vim.cmd.colorscheme(color)
end

-- ayu-mirage
-- monokai_pro

SetColor()

