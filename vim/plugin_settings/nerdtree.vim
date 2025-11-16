" -----------------------------
" NERDTree Settings
" -----------------------------
" Disable netrw to avoid conflicts
let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

" NERDTree preferences
let g:NERDTreeWinSize      = 30        " Width of the sidebar
let g:NERDTreeWinPos       = "left"    " Always open on the left
let g:NERDTreeShowHidden   = 1         " Show hidden files
let g:NERDTreeQuitOnOpen   = 0         " Don't close tree on file open

" Ctrl+n toggles NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Close Vim if NERDTree is the only window left
autocmd bufenter * if winnr('$') == 1 && &filetype == 'nerdtree' | quit | endif

" Always open NERDTree on Vim start if no files specified
autocmd VimEnter * if argc() == 0 | NERDTree | wincmd p | endif

" Optional: Keep tree mirrored when switching tabs
" (emulates persistence as much as Vim allows)
autocmd TabEnter * if exists("t:NERDTreeBufName") | silent! NERDTreeMirror | wincmd H | exe 'vertical resize ' . g:NERDTreeWinSize | wincmd p | endif

" Always open NERDTree on startup
"autocmd VimEnter * NERDTree | wincmd p
