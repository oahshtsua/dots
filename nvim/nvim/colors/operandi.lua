local palette = {
	bg_main = "#FFFFFF",
	bg_dim = "#f0f0f0",
	fg_main = "#1f1f1f",
	fg_dim = "#595959",
	fg_alt = "#193668",
	bg_active = "#c4c4c4",
	bg_inactive = "#e0e0e0",
	border = "#9f9f9f",
	red = "#a60000",
	red_warmer = "#972500",
	red_cooler = "#a0132f",
	red_faint = "#7f0000",
	red_intense = "#d00000",
	green = "#006800",
	green_warmer = "#316500",
	green_cooler = "#00663f",
	green_faint = "#2a5045",
	green_intense = "#008900",
	yellow = "#6f5500",
	yellow_warmer = "#884900",
	yellow_cooler = "#7a4f2f",
	yellow_faint = "#624416",
	yellow_intense = "#808000",
	blue = "#0031a9",
	blue_warmer = "#354fcf",
	blue_cooler = "#0000b0",
	blue_faint = "#003497",
	blue_intense = "#0000ff",
	magenta = "#721045",
	magenta_warmer = "#8f0075",
	magenta_cooler = "#531ab6",
	magenta_faint = "#7c318f",
	magenta_intense = "#dd22dd",
	cyan = "#005e8b",
	cyan_warmer = "#3f578f",
	cyan_cooler = "#005f5f",
	cyan_faint = "#005077",
	cyan_intense = "#008899",
	rust = "#8a290f",
	gold = "#80601f",
	olive = "#56692d",
	slate = "#2f3f83",
	indigo = "#4a3a8a",
	maroon = "#731c52",
	pink = "#7b435c",
	bg_red_intense = "#ff8f88",
	bg_green_intense = "#8adf80",
	bg_yellow_intense = "#f3d000",
	bg_blue_intense = "#bfc9ff",
	bg_magenta_intense = "#dfa0f0",
	bg_cyan_intense = "#a4d5f9",
	bg_red_subtle = "#ffcfbf",
	bg_green_subtle = "#b3fabf",
	bg_yellow_subtle = "#fff576",
	bg_blue_subtle = "#ccdfff",
	bg_magenta_subtle = "#ffddff",
	bg_cyan_subtle = "#bfefff",
	bg_red_nuanced = "#fff1f0",
	bg_green_nuanced = "#ecf7ed",
	bg_yellow_nuanced = "#fff3da",
	bg_blue_nuanced = "#f3f3ff",
	bg_magenta_nuanced = "#fdf0ff",
	bg_cyan_nuanced = "#ebf6fa",
	bg_graph_red_0 = "#ef7969",
	bg_graph_red_1 = "#ffaab4",
	bg_graph_green_0 = "#4faa09",
	bg_graph_green_1 = "#8fef00",
	bg_graph_yellow_0 = "#ffcf00",
	bg_graph_yellow_1 = "#f9ff00",
	bg_graph_blue_0 = "#7090ff",
	bg_graph_blue_1 = "#9fc6ff",
	bg_graph_magenta_0 = "#e07fff",
	bg_graph_magenta_1 = "#fad0ff",
	bg_graph_cyan_0 = "#70d3f0",
	bg_graph_cyan_1 = "#afefff",
	bg_completion = "#c0deff",
	bg_hover = "#94d4ff",
	bg_hover_secondary = "#f5d0a0",
	bg_hl_line = "#d0d6ec",
	bg_paren_match = "#5fcfff",
	bg_paren_expression = "#efd3f5",
	bg_region = "#bcbcbc",
	bg_region_subtle = "#f0e0cc",
	bg_char_0 = "#7feaff",
	bg_char_1 = "#ffaaff",
	bg_char_2 = "#dff000",
	bg_mode_line_active = "#c8c8c8",
	fg_mode_line_active = "#000000",
	border_mode_line_active = "#5a5a5a",
	bg_mode_line_inactive = "#e6e6e6",
	fg_mode_line_inactive = "#585858",
	border_mode_line_inactive = "#a3a3a3",
	modeline_err = "#7f0000",
	modeline_warning = "#5f0070",
	modeline_info = "#002580",
	bg_tab_bar = "#dfdfdf",
	bg_tab_current = "#ffffff",
	bg_tab_other = "#c2c2c2",
	bg_added = "#c1f2d1",
	bg_added_faint = "#d8f8e1",
	bg_added_refine = "#aee5be",
	bg_added_intense = "#8cca8c",
	fg_added = "#005000",
	fg_added_intense = "#006700",
	bg_changed = "#ffdfa9",
	bg_changed_faint = "#ffefbf",
	bg_changed_refine = "#fac090",
	bg_changed_intense = "#d7c20a",
	fg_changed = "#553d00",
	fg_changed_intense = "#655000",
	bg_removed = "#ffd8d5",
	bg_removed_faint = "#ffe9e9",
	bg_removed_refine = "#f3b5af",
	bg_removed_intense = "#d84a4f",
	fg_removed = "#8f1313",
	fg_removed_intense = "#aa2222",
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
}

if vim.g.color_name then
	vim.cmd.hi("clear")
	vim.cmd.syntax("reset")
end
vim.g.palette_name = "modus"
vim.o.background = "light"
vim.o.termguicolors = true

for group, settings in pairs(hi_groups) do
	vim.api.nvim_set_hl(0, group, settings)
end
