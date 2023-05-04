--- config

options = {
    relativenumber = true,
    cursorline = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    showmatch = true,
    wildmenu = true,
    updatetime = 100,
    termguicolors = true,
}

mapleader = ','

keymaps = {
    -- quit
    { 'n', 'qq', ':q<CR>' },
    { 'n', 'qw', ':wq<CR>' },
    { 'n', 'qi', ':q!<CR>' },
    -- save
    { 'n', '<C-s>', ':w<CR>' },
    { 'i', '<C-s>', '<Esc>:w<CR>a' },
    -- tab
    { 'n', 't<Up>',    ':tabnew<CR>' },
    { 'n', 't<Down>',  ':tabclose<CR>' },
    { 'n', 't<Right>', ':tabnext<CR>' },
    { 'n', 't<Left>',  ':tabprevious<CR>' },
    -- search
    { 'n', '<Leader><Space>', ':nohlsearch<CR>' },
    -- terminal
    { 't', '<Esc><Esc>', '<C-\\><C-n>' },
    -- neosnippet
    { 'i', '<C-Space>', '<Plug>(neosnippet_expand_or_jump)' },
    { 'i', '<Tab>', function()
        return vim.call('neosnippet#jumpable') == 1 and '<Plug>(neosnippet_jump)' or '<Tab>'
    end, { expr = true } },
    { 's', '<Tab>', function()
        return vim.call('neosnippet#jumpable') == 1 and '<Plug>(neosnippet_jump)' or '<Tab>'
    end, { expr = true } },
}

plugins = [[
https://github.com/tpope/vim-fugitive
https://github.com/lifepillar/vim-wwdc17-theme
jiangmiao/auto-pairs
https://github.com/itchyny/lightline.vim
dense-analysis/ale
https://github.com/airblade/vim-gitgutter/
Shougo/deoplete.nvim
https://github.com/Shougo/neosnippet.vim
https://github.com/hashivim/vim-terraform
]]

variables = {
    -- ale
    { 'ale_completion_enabled', true },
    { 'airline#extensions#ale#enabled', true },
    { 'ale_cursor_detail', true },
    { 'ale_detail_to_floating_preview', true },
    { 'ale_lint_on_text_changed', 'always' },
    { 'ale_completion_autoimport', 'true' },
    { 'ale_linters', {
        go = { 'gopls' },
        javascript = { 'tsserver' },
        powershell = { 'psscriptanalyzer' },
    } },
    -- gitgutter
    { 'gitgutter_grep', '' },
    -- lightline
    { 'lightline', {
        colorscheme = 'ayu_light',
    } },
    -- neosnippet
    { 'neosnippet#disable_runtime_snippets', { [' '] = 1 } },
    { 'neosnippet#snippets_directory', '~/.config/nvim/neosnippet' },
    -- deoplete
    { 'deoplete#enable_at_startup', '1' },
    -- wwdc17
    { 'wwdc17_frame_color', 10 },
}

colorscheme = 'wwdc17'

-- main

vim.cmd([[
filetype plugin on
syntax enable
]])

for k,v in pairs(options) do
    vim.opt[k] = v
end

vim.g.mapleader = mapleader

for k,v in pairs(keymaps) do
    vim.keymap.set(v[1], v[2], v[3], v[4])
end

vim.call('plug#begin')
for i in string.gmatch(plugins, '%S+') do
    vim.cmd('Plug ' .. "'" .. i .. "'")
end
vim.call('plug#end')

for k,v in pairs(variables) do
    vim.api.nvim_set_var(v[1], v[2])
end

vim.cmd('colorscheme ' .. colorscheme)

vim.cmd("amenu Test.A.B\t:echo BBB")
vim.cmd("amenu Test.A.C\t:echo CCC")
