" Setting up the colors
let s:melvor0_gui = "#232a35"   " Black
let s:melvor1_gui = "#e06e6e"   " DarkBlue
let s:melvor2_gui = "#8ccf7e"   " DarkGreen
let s:melvor3_gui = "#e5c76b"   " DarkCyan
let s:melvor4_gui = "#67b0e8"   " DarkRed
let s:melvor5_gui = "#c47fd5"   " DarkMagenta
let s:melvor6_gui = "#6cd0ca"   " Brown, DarkYellow
let s:melvor7_gui = "#b3b9b8"   " LightGray, Gray
let s:melvor8_gui = "#3b4244"   " DarkGray
let s:melvor9_gui = "#ef7d7d"   " Blue, LightBlue
let s:melvor10_gui = "#9bdead"  " Green, LightGreen
let s:melvor11_gui = "#f4d67a"  " Cyan, LightCyan
let s:melvor12_gui = "#6cb5ed"  " Red, LightRed
let s:melvor13_gui = "#ce89df"  " Magenta, LightMagenta
let s:melvor14_gui = "#67cbe7"  " Yellow, LightYellow
let s:melvor15_gui = "#bdc3c2"  " White
let s:melvorbg_gui = "#181f21"  "
let s:melvorfg_gui = "#dadada"  "

let s:melvorNR_fg = s:melvor7_gui

hi clear
syntax reset
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

"Syntax Highlighting
exe "hi CursorLineNR guifg=" s:melvorNR_fg
exe "hi CursorLine guibg=" s:melvor0_gui

exe "hi ErrorMsg guifg=" s:melvor1_gui." guibg="s:melvor8_gui
exe "hi WarningMsg guifg=" s:melvor0_gui

exe "hi PreProc guifg=" s:melvor4_gui
exe "hi Exception guifg=" s:melvor7_gui
exe "hi Error guifg=" s:melvor1_gui
exe "hi Type guifg=" s:melvor4_gui
exe "hi Identifier guifg=" s:melvor1_gui

exe "hi Constant guifg=" s:melvor4_gui
exe "hi Repeat guifg=" s:melvor5_gui
exe "hi Keyword guifg=" s:melvor5_gui
exe "hi IncSearch guifg=" s:melvor3_gui
exe "hi Title guifg=" s:melvor2_gui
exe "hi PreCondit guifg=" s:melvor5_gui
exe "hi Debug guifg=" s:melvor13_gui
exe "hi SpecialChar guifg=" s:melvor4_gui
exe "hi Conditional guifg=" s:melvor1_gui
exe "hi Todo guifg=" s:melvor5_gui
exe "hi Special guifg=" s:melvor4_gui
exe "hi Label guifg=" s:melvor12_gui
exe "hi Delimiter guifg=" s:melvor7_gui
exe "hi Number guifg=" s:melvor6_gui
exe "hi Define guifg=" s:melvor6_gui
exe "hi MoreMsg guifg=" s:melvor14_gui
exe "hi Tag guifg=" s:melvor15_gui
exe "hi String guifg=" s:melvor2_gui
exe "hi MatchParen guifg=" s:melvor1_gui
exe "hi Macro guifg=" s:melvor5_gui
exe "hi Function guifg=" s:melvor4_gui
exe "hi Directory guifg=" s:melvor4_gui
exe "hi markdownLinkText guifg=" s:melvor9_gui
exe "hi Include guifg=" s:melvor1_gui
exe "hi Storage guifg=" s:melvor9_gui
exe "hi Statement guifg=" s:melvor5_gui
exe "hi Operator guifg=" s:melvor4_gui
exe "hi ColorColumn guibg=" s:melvor8_gui
exe "hi PMenu guifg="s:melvor7_gui." guibg=" s:melvor0_gui
exe "hi PMenuSel guifg="s:melvor8_gui." guibg="s:melvor5_gui
exe "hi SignColumn guibg=" s:melvor0_gui
exe "hi Title guifg=" s:melvor3_gui
exe "hi LineNr guifg="s:melvor8_gui
exe "hi NonText guifg="s:melvor5_gui." guibg="s:melvor0_gui
exe "hi Comment guifg="s:melvor8_gui "gui=italic"
exe "hi SpecialComment guifg="s:melvor8_gui "gui=italic guibg=NONE "
exe "hi TabLineFill gui=NONE guibg="s:melvor8_gui
exe "hi TabLine guifg="s:melvor7_gui." guibg="s:melvor8_gui
exe "hi StatusLine guibg="s:melvorbg_gui." guifg="s:melvorfg_gui
exe "hi StatusLineNC guibg="s:melvorbg_gui." guifg="s:melvorfg_gui
exe "hi Search guibg="s:melvor8_gui." guifg="s:melvor4_gui
exe "hi VertSplit gui=NONE guifg="s:melvor0_gui." guibg="s:melvor0_gui
exe "hi Visual gui=NONE guibg="s:melvor0_gui
exe "hi Underlined guifg="s:melvor3_gui
exe "hi EndOfBuffer guibg=NONE"

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
exe "hi GitGutterAdd guifg="s:melvor3_gui
exe "hi GitGutterChange guifg="s:melvor1_gui
exe "hi GitGutterDelete guifg="s:melvor3_gui
exe "hi GitGutterChangeDelete guifg="s:melvor4_gui
exe "hi GitGutterLineHighlightsEnable guifg="s:melvor9_gui." guibg="s:melvor8_gui

" Nvim-Treesitter Highlights
exe "hi TSAttribute guifg="s:melvor4_gui
exe "hi TSBoolean guifg="s:melvor6_gui
exe "hi TSCharacter guifg="s:melvor4_gui
exe "hi TSComment guifg="s:melvor8_gui
exe "hi TSConditional guifg="s:melvor1_gui
exe "hi TSConstant guifg="s:melvor6_gui
exe "hi TSConstBuiltin guifg="s:melvor4_gui
exe "hi TSConstMacro guifg="s:melvor3_gui
exe "hi TSConstructor guifg="s:melvor4_gui
exe "hi TSException guifg="s:melvor8_gui
exe "hi TSField guifg="s:melvor1_gui
exe "hi TSFloat guifg="s:melvor8_gui
exe "hi TSFunction guifg="s:melvor1_gui
exe "hi TSFuncBuiltin guifg="s:melvor14_gui
exe "hi TSFuncMacro guifg="s:melvor2_gui
exe "hi TSInclude guifg="s:melvor9_gui
exe "hi TSKeyword guifg="s:melvor5_gui
exe "hi TSKeywordFunction guifg="s:melvor4_gui
exe "hi TsKeywordOperator guifg="s:melvor12_gui
exe "hi TSKeywordReturn guifg="s:melvor4_gui
exe "hi TSLabel guifg="s:melvor4_gui
exe "hi TSMethod guifg="s:melvor12_gui
exe "hi TSNamespace guifg="s:melvor9_gui
exe "hi TSNumber guifg="s:melvor3_gui
exe "hi TSParameter guifg="s:melvor1_gui
exe "hi TSParameterReference guifg="s:melvor9_gui
exe "hi TSProperty guifg="s:melvor1_gui
exe "hi TSPunctDelimiter guifg="s:melvor7_gui
exe "hi TSPunctBracket guifg="s:melvor7_gui
exe "hi TSPunctSpecial guifg="s:melvor7_gui
exe "hi TSRepeat guifg="s:melvor11_gui
exe "hi TSString guifg="s:melvor2_gui
exe "hi TSStringRegex guifg="s:melvor2_gui
exe "hi TSStringEscape guifg="s:melvor4_gui
exe "hi TSStringSpecial guifg="s:melvor4_gui
exe "hi TSSymbol guifg="s:melvor1_gui
exe "hi TSTag guifg="s:melvor4_gui
exe "hi TSTagAttribute guifg="s:melvor1_gui
exe "hi TSTagDelimiter guifg="s:melvor7_gui
exe "hi TSText guifg="s:melvor7_gui
exe "hi TSStrong guifg="s:melvor7_gui
exe "hi TSEmphasis gui=italic guifg="s:melvor7_gui
exe "hi TSUnderline guifg="s:melvor5_gui
exe "hi TSStrike guifg="s:melvor7_gui
exe "hi TSTitle guifg="s:melvor3_gui
exe "hi TSLiteral guifg="s:melvor2_gui
exe "hi TSURI guifg="s:melvor3_gui
exe "hi TSMath guifg="s:melvor6_gui
exe "hi TSTextReference guifg="s:melvor6_gui
exe "hi TSEnvirontment guifg="s:melvor5_gui
exe "hi TSEnvironmentName guifg="s:melvor3_gui
exe "hi TSNote guifg="s:melvor8_gui
exe "hi TSWarning guifg="s:melvor0_gui." guibg="s:melvor1_gui
exe "hi TSDanger guifg="s:melvor8_gui
exe "hi TSType guifg="s:melvor3_gui
exe "hi TSTypeBuiltin guifg="s:melvor3_gui
exe "hi TSVariable guifg="s:melvor7_gui
exe "hi TSVariableBuiltin guifg="s:melvor4_gui

" C Language Higlights
exe "hi cConstant guifg="s:melvor4_gui
exe "hi cCppBracket guifg="s:melvor7_gui
exe "hi cCppInElse guifg="s:melvor7_gui
exe "hi cCppInElse2 guifg="s:melvor7_gui
exe "hi cCppInIf guifg="s:melvor4_gui
exe "hi cCppInSkip guifg="s:melvor7_gui
exe "hi cCppInWapper guifg="s:melvor5_gui
exe "hi cCppOutElse guifg="s:melvor7_gui
exe "hi cCppOutIf guifg="s:melvor8_gui
exe "hi cCppOutIf2 guifg="s:melvor8_gui
exe "hi cCppOutInGroup guifg="s:melvor8_gui
exe "hi cCppOutSkip guifg="s:melvor8_gui
exe "hi cCppOutWrapper guifg="s:melvor5_gui
exe "hi cCppParen guifg="s:melvor7_gui
exe "hi cCppString guifg="s:melvor2_gui
exe "hi cCurlyError guifg="s:melvor7_gui." guibg="s:melvor9_gui
exe "hi cErrInBracket guifg="s:melvor7_gui." guibg="s:melvor9_gui
exe "hi cErrInParen guifg="s:melvor7_gui." guibg="s:melvor9_gui
exe "hi cFloat guifg="s:melvor8_gui
exe "hi cFormat guifg="s:melvor4_gui
exe "hi cMutli guifg="s:melvor3_gui
exe "hi cOperator guifg="s:melvor4_gui
exe "hi cParen guifg="s:melvor3_gui
exe "hi cParenError guifg="s:melvor7_gui." guibg="s:melvor9_gui
exe "hi PreProcGroup guifg="s:melvor4_gui
exe "hi cSpaceError guifg="s:melvor1_gui
exe "hi cSpecial guifg="s:melvor4_gui
exe "hi cSpecialCharacter guifg="s:melvor4_gui
exe "hi cStatement guifg="s:melvor5_gui
exe "hi cStorageClass guifg="s:melvor3_gui
exe "hi cString guifg="s:melvor2_gui
exe "hi cType guifg="s:melvor3_gui
exe "hi cUserCont guifg="s:melvor7_gui

" GoLang Highlight Groups
exe "hi goBlock guifg="s:melvor7_gui
exe "hi goBuiltins guifg="s:melvor13_gui
exe "hi goCharacter guifg="s:melvor1_gui
exe "hi goComment guifg="s:melvor8_gui
exe "hi goComplexes guifg="s:melvor3_gui
exe "hi goConditional guifg="s:melvor5_gui
exe "hi goConstants guifg="s:melvor5_gui
exe "hi goDecimalInt  guifg="s:melvor3_gui
exe "hi goDeclType guifg="s:melvor13_gui
exe "hi goDeclaration guifg="s:melvor5_gui
exe "hi goDirective guifg="s:melvor1_gui
exe "hi goEscapeC guifg="s:melvor4_gui
exe "hi goEscapeBigU guifg="s:melvor4_gui
exe "hi goEscapeError guifg="s:melvor0_gui." guibg="s:melvor1_gui
exe "hi goEscapeOctal guifg="s:melvor4_gui
exe "hi goEscapeU guifg="s:melvor4_gui
exe "hi goEscapeX guifg="s:melvor4_gui
exe "hi goExtraType guifg="s:melvor3_gui
exe "hi goFloat guifg="s:melvor11_gui
exe "hi goFloats guifg="s:melvor12_gui
exe "hi goHexadecimalInt guifg="s:melvor3_gui
exe "hi goImaginary guifg="s:melvor3_gui
exe "hi goLabel guifg="s:melvor3_gui
exe "hi goOctalError guifg="s:melvor1_gui
exe "hi goOctalInt guifg="s:melvor11_gui
exe "hi goParen guifg="s:melvor7_gui
exe "hi goRawString guifg="s:melvor10_gui
exe "hi goRepeat guifg="s:melvor3_gui
exe "hi goSignedInts guifg="s:melvor11_gui
exe "hi goSpaceError guifg="s:melvor0_gui." guibg="s:melvor1_gui
exe "hi goSpecialString guifg="s:melvor12_gui
exe "hi goStatement guifg="s:melvor1_gui
exe "hi goString guifg="s:melvor10_gui
exe "hi goTSComment guifg="s:melvor8_gui
exe "hi goTSFunction guifg="s:melvor4_gui
exe "hi goTSInclude guifg="s:melvor4_gui
exe "hi goTSkeyword guifg="s:melvor5_gui
exe "hi goTSKeywordFunction guifg="s:melvor5_gui
exe "hi goTSMethod guifg="s:melvor4_gui
exe "hi goTSNumber guifg="s:melvor8_gui
exe "hi goTSOperator guifg="s:melvor12_gui
exe "hi goTSProperty guifg="s:melvor1_gui
exe "hi goTSPunctBracket guifg="s:melvor6_gui
exe "hi goTSPunctDelimiter guifg="s:melvor13_gui
exe "hi goTSRepeat guifg="s:melvor3_gui
exe "hi goTSString guifg="s:melvor10_gui
exe "hi goTSType guifg="s:melvor3_gui
exe "hi goTSTypeBuiltin guifg="s:melvor3_gui
exe "hi goTSVariable guifg="s:melvor5_gui
exe "hi goTodo guifg="s:melvor3_gui
exe "hi goType guifg="s:melvor3_gui

" NvimTree Highlights
exe "hi NvimTreeFolderIcon guifg="s:melvor3_gui
exe "hi NvimTreeFoldername guifg="s:melvorfg_gui
exe "hi NvimTreeOpenedFolderName guifg="s:melvor4_gui
exe "hi NvimTreeEmptyFolderName guifg="s:melvor4_gui
exe "hi NvimTreeFileDirty guifg="s:melvor1_gui
exe "hi NvimTreeExecFile guifg="s:melvorfg_gui
exe "hi NvimTreeGitDirty guifg="s:melvor1_gui
exe "hi NvimTreeGitDeleted guifg="s:melvor1_gui
exe "hi NvimTreeRootFolder guifg="s:melvor5_gui
exe "hi NvimTreeIndentMarker guifg="s:melvor0_gui
