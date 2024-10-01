local palette = {
	bg = "#FFFCF0",
	bg_2 = "#F2F0E5",
	ui = "#E6E4D9",
	ui_2 = "#DAD8CE",
	ui_3 = "#CECDC3",
	tx = "#100F0F",
	tx_2 = "#6F6E69",
	tx_3 = "#B7B5AC",
	re_600 = "#AF3029",
	or_600 = "#BC5215",
	ye_600 = "#AD8301",
	gr_600 = "#66800B",
	cy_600 = "#24837B",
	bl_600 = "#205EA6",
	pu_600 = "#5E409D",
	ma_600 = "#A02F6F",
	re_400 = "#D14D41",
	or_400 = "#DA702C",
	ye_400 = "#D0A215",
	gr_400 = "#879A39",
	cy_400 = "#3AA99F",
	bl_400 = "#4385BE",
	pu_400 = "#8B7EC8",
	ma_400 = "#CE5D97",

	bg_added = "#E1E9C4",
	bg_removed = "#EFC1BD",
	bg_changed = "#F8E7B5",
}

local hi_groups = {
	ColorColumn = { bg = palette.ui }, -- Columns set with 'colorcolumn'
	-- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
	-- Cursor         { }, -- Character under the cursor
	-- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
	-- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
	-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
	-- CursorColumn = { palette.ui },
	CursorLine = { bg = palette.ui },
	Directory = { fg = palette.bl_600, bold = true }, -- Directory names (and other special names in listings)
	DiffAdd = { fg = palette.gr_400 }, -- Diff mode: Added line |diff.txt|
	DiffChange = { fg = palette.ye_400 }, -- Diff mode: Changed line |diff.txt|
	DiffDelete = { fg = palette.re_400 }, -- Diff mode: Deleted line |diff.txt|
	DiffText = { bg = palette.blue_subtle },
	-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
	-- TermCursor     { }, -- Cursor in a focused terminal
	-- TermCursorNC   { }, -- Cursor in an unfocused terminal
	-- ErrorMsg       { }, -- Error messages on the command line
	-- VertSplit = { bg = palette.re_600 }, -- Column separating vertically split windows
	-- Folded        =  { }, -- Line used for closed folds
	-- FoldColumn    =  { }, -- 'foldcolumn'
	SignColumn = { bg = palette.bg }, -- Column where |signs| are displayed
	-- IncSearch     =  { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
	-- Substitute    =  { }, -- |:substitute| replacement text highlighting
	LineNr = { fg = palette.tx_2 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
	LineNrAbove = { link = "LineNr" }, -- Line number for when the 'relativenumber' option is set, above the cursor line
	LineNrBelow = { link = "LineNr" }, -- Line number for when the 'relativenumber' option is set, above the cursor line
	CursorLineNr = { bg = palette.ui, fg = palette.tx, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
	-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
	CursorLineSign = { link = "CursorLine" }, -- Like SignColumn when 'cursorline' is set for the cursor line
	MatchParen = { bg = palette.ui_3, bold = true }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
	-- ModeMsg        { }, -- 'showmode' message (e.g., "-- INSERT -- ")
	MsgArea = { bg = palette.ui_2 }, -- Area for messages and cmdline
	-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
	-- MoreMsg        { }, -- |more-prompt|
	NonText = { fg = palette.tx_3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
	Normal = { fg = palette.tx, bg = palette.bg }, -- Normal text
	NormalFloat = { bg = palette.bg_2, fg = palette.tx }, -- Normal text in floating windows.
	-- FloatBorder    { }, -- Border of floating windows.
	-- FloatTitle     { }, -- Title of floating windows.
	NormalNC = { link = "Normal" },
	Pmenu = { bg = palette.bg_2 }, -- Popup menu: Normal item.
	PmenuSel = { bg = palette.ui_3 }, -- Popup menu: Selected item.
	-- PmenuKind      { }, -- Popup menu: Normal item "kind"
	-- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
	-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
	-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
	-- PmenuSbar      { }, -- Popup menu: Scrollbar.
	PmenuThumb = { bg = palette.tx_3 }, -- Popup menu: Thumb of the scrollbar.
	-- Question       { }, -- |hit-enter| prompt and yes/no questions
	-- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
	Search = { bg = palette.ye_400 }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
	-- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
	-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
	-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
	-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
	-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
	StatusLine = { fg = palette.tx, bg = palette.ui_2 }, -- Status line of current window
	-- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
	TabLine = { bg = palette.ui_2 }, -- Tab pages line, not active tab page label
	-- TabLineFill    { }, -- Tab pages line, where there are no labels
	TabLineSel = { bg = palette.ui }, -- Tab pages line, active tab page label
	-- Title          { }, -- Titles for output from ":set all", ":autocmd" etc.
	Visual = { bg = palette.ui_3 }, -- Visual mode selection
	VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
	-- WarningMsg     { }, -- Warning messages
	-- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
	Winseparator = { bg = None }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
	-- WildMenu       { }, -- Current match in 'wildmenu' completion
	WinBar = { bg = palette.bg_2 }, -- Window bar of current window
	WinBarNC = { bg = palette.bg_2 }, -- Window bar of not-current windows
	SpecialKey = { fg = palette.blue },
	IncSearch = { link = "Search" },
	CurSearch = { link = "IncSearch" },
	QuickFixLine = { bg = palette.red, fg = palette.blue },
	WinBar = { bg = palette.bg_tab_bar },
	WinBarNC = { link = "WinBar" },
	Title = { fg = palette.fg_main, bg = palette.bg_main, bold = true },
	ErrorMsg = { fg = palette.red, bold = true },
	MoreMsg = { fg = palette.yellow, bold = true },
	ModeMsg = { fg = palette.yellow, bold = true },
	Question = { fg = palette.yellow, bold = true },
	WarningMsg = { fg = palette.red, bold = true },
	Folded = { fg = palette.fg_main, bg = palette.bg_region_subtle },
	FoldColumn = { fg = palette.fg_main, bg = palette.bg_dim },
	Cursor = { reverse = false },
	vCursor = { link = "Cursor" },
	iCursor = { link = "Cursor" },
	lCursor = { link = "Cursor" },
	Special = { fg = palette.fg_main },

	Comment = { fg = palette.tx_2, italic = true }, -- Any comment

	Constant = { fg = palette.ma_600 }, -- (*) Any constant
	String = { fg = palette.cy_600 }, --   A string constant: "this is a string"
	Character = { link = "Constant" }, --   A character constant: 'c', '\n'
	Number = { link = "Constant" }, --   A number constant: 234, 0xff
	Boolean = { link = "Constant" }, --   A boolean constant: TRUE, false
	Float = { link = "Number" }, --   A floating point constant: 2.3e10

	Identifier = { fg = palette.tx }, -- (*) Any variable name
	Function = { fg = palette.or_600 },

	Statement = { fg = palette.tx }, -- (*) Any statement
	Conditional = { link = "Statement" }, --   if, then, else, endif, switch, etc.
	Repeat = { link = "Statement" }, --   for, do, while, etc.
	Label = { link = "Statement" }, --   case, default, etc.
	Operator = { link = "Statement" }, --   "sizeof", "+", "*", etc.
	Keyword = { fg = palette.bl_600 }, --   any other keyword
	Exception = { link = "Statement" }, --   try, catch, throw

	PreProc = { fg = palette.ye_600 }, -- (*) Generic Preprocessor
	Include = { link = "PreProc" }, --   Preprocessor #include
	Define = { link = "PreProc" }, --   Preprocessor #define
	Macro = { link = "PreProc" }, --   Same as Define
	PreCondit = { link = "PreProc" }, --   Preprocessor #if, #else, #endif, etc.

	Type = { fg = palette.cy_600 }, -- (*) int, long, char, etc.
	-- StorageClass   = { }, --   static, register, volatile, etc.
	-- Structure      = { }, --   struct, union, enum, etc.
	-- Typedef        = { }, --   A typedef

	-- Special        = { }, -- (*) Any special symbol
	-- SpecialChar    = { }, --   Special character in a constant
	-- Tag            = { }, --   You can use CTRL-] on this
	-- Delimiter      = { }, --   Character that needs attention
	-- SpecialComment = { }, --   Special things inside a comment (e.g. '\n')
	-- Debug          = { }, --   Debugging statements

	Underlined = { underline = true }, -- Text that stands out, HTML links
	-- Ignore         = { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
	Error = { fg = palette.re_600, bold = true }, -- Any erroneous construct
	Todo = { fg = palette.ye_600, bold = true }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

	-- Diagnostics --
	DiagnosticError = { fg = palette.re_600 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	DiagnosticWarn = { fg = palette.ye_600 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	DiagnosticInfo = { fg = palette.cy_600 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	DiagnosticHint = { fg = palette.bl_600 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	DiagnosticOk = { fg = palette.gr_600 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
	-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
	-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
	-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
	-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
	-- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
	DiagnosticUnderlineError = { undercurl = true, sp = palette.re_600 }, -- Used to underline "Error" diagnostics.
	DiagnosticUnderlineWarn = { undercurl = true, sp = palette.ye_600 }, -- Used to underline "Warn" diagnostics.
	DiagnosticUnderlineInfo = { undercurl = true, sp = palette.cy_600 }, -- Used to underline "Info" diagnostics.
	DiagnosticUnderlineHint = { undercurl = true, sp = palette.bl_600 }, -- Used to underline "Hint" diagnostics.
	DiagnosticUnderlineOk = { undercurl = true, sp = palette.gr_600 }, -- Used to underline "Ok" diagnostics.
	-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
	-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
	-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
	-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
	-- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
	-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
	-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
	-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
	-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
	-- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

	Added = { fg = palette.gr_400 },
	Removed = { fg = palette.re_400 },
	Changed = { fg = palette.ye_400 },
	DiffDelete = { bg = palette.bg_removed },
	DiffAdd = { bg = palette.bg_added },
	DiffChange = { bg = palette.bg_changed },
	DiffText = { bg = "#F4D67C" },

	DiffviewPrimary = { fg = palette.tx },
	DiffviewFilePanelFileName = { fg = palette.tx },
	DiffviewFilePanelCounter = { fg = palette.tx },
	DiffviewFilePanelTitle = { fg = palette.tx, bold = true },
	diffRemoved = { fg = palette.re_600 },
	diffAdded = { fg = palette.gr_600 },
}

if vim.g.color_name then
	vim.cmd.hi("clear")
	vim.cmd.syntax("reset")
end
vim.g.palette_name = "flexlokey"
vim.o.background = "light"
vim.o.termguicolors = true

for group, settings in pairs(hi_groups) do
	vim.api.nvim_set_hl(0, group, settings)
end
