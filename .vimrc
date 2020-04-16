call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'tag': '*' }

" Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'

Plug 'raimondi/delimitMate'

Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

Plug 'andymass/vim-matchup'

Plug 'leafoftree/vim-vue-plugin'

call plug#end()

colorscheme gruvbox

let mapleader=","

set softtabstop=4               " Let backspace delete indent
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current

" 显示行号
set number
syntax on
" 检查文件类型
filetype indent plugin on

autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx syntax=typescript.tsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx syntax=javascript.jsx
autocmd BufNewFile,BufRead *.mdx set filetype=mdx syntax=markdown
autocmd FileType html,css,scss,less,javascript,typescript,json,javascript.jsx,typescript.tsx,vue,mdx,yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2

" 打开目录自动打开nerdtree
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" 打开关闭tree
map <C-z> :NERDTreeToggle<CR>
let NERDTreeKeepTreeInNewTab=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" tab间移动
 nmap <C-J> <C-W>j
 nmap <C-K> <C-W>k
 nmap <C-L> <C-W>l
 nmap <C-H> <C-W>h
 

 " 补全配置
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

if exists('*complete_info')
  inoremap <expr> <C-c> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <C-c> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 括号换行+1行
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1


let g:loaded_matchit = 1


" 绑定自定义的命令
map <M-d> <Esc><CR>
imap kj <Esc>



let g:vim_vue_plugin_load_full_syntax = 1
