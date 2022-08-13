" Setting up the colors

" let s:melvor0_gui = "#232A35"   " Black
let s:melvor0_gui = "#181f21"   " Black
let s:melvor1_gui = "#5179D6"   " DarkBlue
let s:melvor2_gui = "#30C78D"   " DarkGreen
let s:melvor3_gui = "#4194D9"   " DarkCyan
let s:melvor4_gui = "#D92220"   " DarkRed
let s:melvor5_gui = "#7064E3"   " DarkMagenta
let s:melvor6_gui = "#F3D55B"   " Brown, DarkYellow
let s:melvor7_gui = "#b3b9b8"   " LightGray, Gray

let s:melvor8_gui = "#394556"   " DarkGray
let s:melvor9_gui = "#7B99E0"   " Blue, LightBlue
let s:melvor10_gui = "#4AD39F"  " Green, LightGreen
let s:melvor11_gui = "#66A9E1"  " Cyan, LightCyan
let s:melvor12_gui = "#E4504E"  " Red, LightRed
let s:melvor13_gui = "#9086E9"  " Magenta, LightMagenta
let s:melvor14_gui = "#F6E18D"  " Yellow, LightYellow
let s:melvor15_gui = "#F5F5F5"  " White

" let s:melvorbg_gui = "#232A35"  " Background
let s:melvorbg_gui = "#181f21"  " Background
let s:melvorfg_gui = "#F5F5F5"  " Foreground

let s:melvorNR_fg = s:melvor7_gui

hi clear
" syntax reset
let g:colors_name = "melvor"
set background=dark
set t_Co=256
" hi Normal guifg=#DADADA ctermbg=NONE guibg=#181f21 gui=NONE
exe "hi Normal guifg=" s:melvorfg_gui." ctermbg=NONE guibg="s:melvorbg_gui." gui=NONE"

set t_Co=256
let &t_ut=''
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Focused line Number toggle
if !exists("g:melvorNR")
    let g:melvorNR = 1
endif

if g:melvorNR == 0
    let s:melvorNR_fg = .s:melvor0_gui
endif

exe "hi LineNrAbove guifg="s:melvor8_gui
exe "hi LineNr      guifg="s:melvor8_gui
exe "hi LineNrBelow guifg="s:melvor8_gui

"Syntax Highlighting
exe "hi Comment guifg="s:melvor8_gui "gui=italic"
exe "hi Constant guifg=" s:melvor3_gui
exe "hi String guifg=" s:melvor10_gui
exe "hi Character guifg=" s:melvor2_gui
exe "hi Number guifg=" s:melvor6_gui
exe "hi Boolean guifg="s:melvor6_gui
exe "hi Float guifg="s:melvor8_gui
exe "hi Identifier guifg=" s:melvor1_gui
exe "hi Function guifg=" s:melvor13_gui
exe "hi Statement guifg=" s:melvor5_gui
exe "hi Conditional guifg=" s:melvor1_gui
exe "hi Repeat guifg=" s:melvor5_gui
exe "hi Label guifg=" s:melvor12_gui
exe "hi Operator guifg=" s:melvor13_gui
exe "hi Keyword guifg=" s:melvor5_gui
exe "hi Exception guifg=" s:melvor7_gui
exe "hi PreProc guifg=" s:melvor12_gui
exe "hi Include guifg=" s:melvor1_gui
exe "hi Define guifg=" s:melvor6_gui
exe "hi Macro guifg=" s:melvor5_gui
exe "hi PreCondit guifg=" s:melvor5_gui
exe "hi Type guifg=" s:melvor12_gui
exe "hi StorageClass guifg="s:melvor3_gui
exe "hi Structure guifg="s:melvor3_gui
exe "hi Typedef guifg="s:melvor3_gui
exe "hi Special guifg=" s:melvor6_gui
exe "hi SpecialChar guifg=" s:melvor4_gui
exe "hi Tag guifg=" s:melvor15_gui
exe "hi Delimiter guifg=" s:melvor7_gui
exe "hi SpecialComment guifg="s:melvor8_gui "gui=italic guibg=NONE "
exe "hi Debug guifg=" s:melvor13_gui
exe "hi Underlined guifg="s:melvor3_gui
exe "hi Ignore guifg=" s:melvor1_gui
exe "hi Error guifg=" s:melvor1_gui
exe "hi Todo guifg=" s:melvor5_gui

exe "hi CursorLineNR guifg=" s:melvorNR_fg
exe "hi CursorLine guibg=" s:melvorbg_gui

exe "hi ErrorMsg guifg=" s:melvor1_gui." guibg="s:melvor8_gui
exe "hi WarningMsg guifg=" s:melvor0_gui

" exe "hi TabLine guifg="s:melvor4_gui." guibg="s:melvor4_gui
" exe "hi TabLineFill gui=NONE guibg="s:melvorbg_gui
" exe "hi TabLineSel guifg="s:melvorbg_gui." guibg="s:melvorbg_gui

exe "hi IncSearch guifg=" s:melvor3_gui
exe "hi Title guifg=" s:melvor2_gui
exe "hi MoreMsg guifg=" s:melvor14_gui
exe "hi MatchParen guifg=" s:melvor1_gui
exe "hi Directory guifg=" s:melvor14_gui
exe "hi markdownLinkText guifg=" s:melvor9_gui
exe "hi Storage guifg=" s:melvor9_gui
exe "hi ColorColumn guibg=" s:melvor8_gui
exe "hi PMenu guifg="s:melvor7_gui." guibg=" s:melvor0_gui
exe "hi PMenuSel guifg="s:melvor8_gui." guibg="s:melvor5_gui
exe "hi SignColumn guibg=" s:melvorbg_gui
exe "hi Title guifg=" s:melvor3_gui
exe "hi NonText guifg="s:melvor5_gui." guibg="s:melvor0_gui
" exe "hi StatusLine guibg="s:melvorbg_gui." guifg="s:melvorfg_gui
" exe "hi StatusLineNC guibg="s:melvorbg_gui." guifg="s:melvorfg_gui
exe "hi Search guibg="s:melvor14_gui." guifg="s:melvor1_gui
exe "hi VertSplit gui=NONE guifg="s:melvor8_gui." guibg="s:melvor8_gui
exe "hi Visual guifg="s:melvorbg_gui." guibg="s:melvorfg_gui
exe "hi EndOfBuffer guifg="s:melvorbg_gui

" Spell Highlightings
exe "hi SpellBad guifg="s:melvor1_gui
exe "hi SpellCap guifg="s:melvor1_gui." guibg="s:melvor8_gui
exe "hi SpellLocal guifg="s:melvor4_gui
exe "hi SpellRare guifg="s:melvor5_gui

" Diff Highlightings
exe "hi DiffAdd guifg="s:melvor2_gui." guibg="s:melvorbg_gui
exe "hi DiffChange guifg="s:melvor5_gui." guibg="s:melvorbg_gui
exe "hi DiffDelete guifg="s:melvor6_gui." guibg="s:melvorbg_gui
exe "hi DiffText guifg="s:melvor1_gui." guibg="s:melvorbg_gui

" GitGutter Highlightings
exe "hi GitGutterAdd guifg="s:melvor10_gui
exe "hi GitGutterChange guifg="s:melvor14_gui
exe "hi GitGutterDelete guifg="s:melvor12_gui
exe "hi GitGutterChangeDelete guifg="s:melvor4_gui
exe "hi GitGutterLineHighlightsEnable guifg="s:melvor9_gui." guibg="s:melvor8_gui

" netrw Highlights
" netrwHide
" netrwSortBy
" netrwSortSeq
" netrwQuickHelp
" netrwVersion
" netrwCopyTgt
exe "hi netrwDir guifg="s:melvor1_gui." guibg="s:melvorbg_gui
" netrwSymLink
" netrwExe
" netrwLink
" netrwPlain
exe "hi netrwClassify guifg="s:melvor9_gui." guibg="s:melvorbg_gui
" netrwSpecial
" netrwDateSep
" netrwTime
" netrwSizeDatejsdldf
exe "hi netrwTreeBarSpace guifg="s:melvorbg_gui." guibg="s:melvorbg_gui
exe "hi netrwTreeBar guifg="s:melvorbg_gui." guibg="s:melvorbg_gui
" netrwTimeSep
" netrwComment
" netrwHidePat
" netrwSlash
" netrwHideSep
" netrwList
" netrwComma
" netrwHelpCmd
" netrwQHTopic

" exe "hi jsComment guifg="s:melvor8_gui
" jsLineComment
" jsDocComment
" jsCommentTodo
" jsCvsTag
" jsDocTags
" jsDocSeeTag
" jsDocParam
" jsStringS
" jsStringD
" jsRegexpString
" jsCharacter
" jsPrototype
" jsConditional
" jsBranch
" jsRepeat
" jsStatement
" jsFunction
" jsError
" jsParensError
" jsParensErrA
" jsParensErrB
" jsParensErrC
" jsOperator
" jsType
" jsNull
" jsNumber
" jsFloat
" jsBoolean
" jsLabel
" jsSpecial
" jsSource
" jsGlobalObjects
" jsExceptions
