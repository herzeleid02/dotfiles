set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set ignorecase
set numberwidth=1
set mouse =
"set autochdir
set splitbelow splitright
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o "disable autocommenting on newline
"set shellcmdflag=-ic
set cursorline
set cursorlineopt=number

"my colorscheme was moved to `./colors/herzeleid.vim`
colorscheme herzeleid



autocmd TermOpen * setlocal nonumber norelativenumber
"tnoremap <F2> <C-\><C-n>
":tnoremap <C-w> <C-\><C-n><C-w>
:tnoremap <Esc> <C-\><C-n>


" #D8D849 -- possible yellow color (:Man command outputs yellow)
" set cterm color to "Yellow"

" Aliases
command Date1 read !date '+\%d \%B \%Y, \%A, Week \%W'
" command CopyC normal gg"+yG
" command CC CopyC
" deprecated by `%+y`
"alias date1="date '+%d %B %Y, %A, Week %W'"

"Command LPreview ! xelatex -interaction=nonstopmode %

" Numbers
:set number
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END


"autocmd BufEnter,BufNewFile *.yaml,*.yml setlocal lcs+=space:·
autocmd FileType yaml setlocal list | setlocal lcs+=space:·
autocmd FileType tex setlocal linebreak
autocmd FileType markdown setlocal linebreak



" Plugins

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
"   Make sure you use single quot

"call plug#begin('~/.config/nvim/plugged')
Plug 'dhruvasagar/vim-table-mode'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'nvim-neo-tree/neo-tree.nvim'
Plug 'MunifTanjim/nui.nvim'
"Plug 'nvim-tree/nvim-tree.lua'
"Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
"Plug 'preservim/nerdtree'
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mzlogin/vim-markdown-toc'
"Plug 'vim-scripts/info.vim'
"Plug 'smjonas/live-command.nvim'
Plug 'samjwill/nvim-unception'


call plug#end()

let g:table_mode_corner='|'
let g:unception_block_while_host_edits=1
let g:livepreview_engine = 'xelatex' . ' [--interaction=nonstopmode] '
