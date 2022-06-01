require "user.colorschemes.monokaipro"
require "user.colorschemes.dracula"
require "user.colorschemes.ellisonGruvbox"
require "user.colorschemes.solarized"

-- TODO: figure this out in this setup. Not sure if it's needed though.
-- Get the right colors when running Vim inside tmux: see `:h xterm-true-color`
-- vim.cmd [[
-- if exists('+termguicolors')
--     let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
--     let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
--   endif
-- ]]

vim.cmd [[
try
  colorscheme monokaipro
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=light
endtry
]]

-- Custom highlights:
vim.cmd [[
" hi Normal       guibg=none
hi CursorLineNr guifg=#5eacd3   ctermfg=none
" hi CursorLine   guibg=#151313      ctermbg=none
]]

