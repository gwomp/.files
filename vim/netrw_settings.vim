" -----------------------------------------------------------------------------
" netrw settings
" -----------------------------------------------------------------------------
let g:netrw_keepdir = 0     " sync current and browsing directory synced
let g:netrw_banner=0        " hide banner - use I to show
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+' " hide these files
let g:netrw_localcopydircmd = 'cp -r'   " default to recursive copy

" Highlight marked files the same as search matches
hi! link netrwMarkFile Search

" -----------------------------------------------------------------------------
" netrw key mappings
" -----------------------------------------------------------------------------
function! NetrwMapping()
    " https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
    " Check out this to customize netrw keymappings
endfunction

augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

" -----------------------------------------------------------------------------
" netrw autocommands
" -----------------------------------------------------------------------------

" open on new tab
autocmd VimEnter,TabNew * :ToggleNetrwExplorer

" Close VIM if netrw is the last buffer
aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END


" augroup ProjectDrawer
"   autocmd!
"   if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in")
"     silent exe "bwipeout " . bufnr("$")
"     exe 'cd '.argv()[0]
"     autocmd VimEnter * :call s:toggle_netrw()
"   else
"     autocmd VimEnter * :call s:toggle_netrw()
"     autocmd VimEnter * wincmd p
"   endif
" augroup END!

" -----------------------------------------------------------------------------
" netrw sidebar toggle
" -----------------------------------------------------------------------------
" TODO add to function...
" netrw is closed - open
" netrw is open but without focus - move focus to netrw
command! ToggleNetrwExplorer call s:toggle_netrw()

function! s:open_netrw()
  " Open a 24-column left-side netrw explorer in the directory for the current file
    if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in")
        24Lexplore %:h
    else
        24Lexplore
    endif

    " find active file in explorer
    let t:netrw_buffer_number = bufnr("%")
    let file_name = expand("%:t")
    call search(file_name)
endfunction

function! s:toggle_netrw()
    if exists("t:netrw_buffer_number")
        let netrw_window_number = bufwinnr(t:netrw_buffer_number)
        if netrw_window_number != -1
            let current_working_buffer = winnr()
            " move to the netrw window
            exec netrw_window_number . "wincmd w"
            " close it
            close
            if current_working_buffer != netrw_window_number
              " go back to the file
              exec "silent! " . current_working_buffer . "wincmd w"
            endif
            unlet t:netrw_buffer_number
        else
            " was the explorer was closed manually?
            call s:open_netrw()
        endif
    else
        call s:open_netrw()
    endif
endfunction
