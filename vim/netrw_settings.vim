" -----------------------------------------------------------------------------
" netrw settings
" -----------------------------------------------------------------------------
let g:netrw_keepdir = 0     " sync current and browsing directory synced
let g:netrw_banner = 0        " hide banner - use I to show
let g:netrw_altv = 1          " open splits to the right
let g:netrw_liststyle = 3     " tree view
let g:netrw_list_hide = netrw_gitignore#Hide()
" let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+' " hide these files
let g:netrw_localcopydircmd = 'cp -r'   " default to recursive copy

" Highlight marked files the same as search matches
hi! link netrwMarkFile Search

" -----------------------------------------------------------------------------
" netrw autocommands
" -----------------------------------------------------------------------------
" Close VIM if netrw is the last buffer
aug netrw_close
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw"|q|endif
aug END
