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
}

local hi_groups = {
	Normal = { fg = palette.fg_main, bg = palette.bg_main },
	NormalFloat = { bg = palette.bg_dim },
	NormalNC = { link = "Normal" },
	CursorLine = { bg = palette.bg_hl_line },
	CursorColumn = { link = "CursorLine" },
	TabLineFill = { fg = palette.fg_main, bg = palette.bg_tab_bar },
	TabLineSel = { fg = palette.fg_main, bg = palette.bg_tab_current },
	TabLine = { bg = palette.bg_tab_other },
	MatchParen = { bg = palette.bg_paren_match },
	ColorColumn = { bg = palette.bg_main },
	CursorLineNr = { bg = palette.bg_hl_line, fg = palette.fg_main, bold = true },
	CursorLineSign = { bg = palette.bg_hl_line },
	NonText = { fg = palette.border },
	SpecialKey = { fg = palette.blue },
	Visual = { bg = palette.bg_hover },
	VisualNOS = { link = "Visual" },
	Search = { bg = palette.bg_hover_secondary },
	IncSearch = { link = "Search" },
	CurSearch = { link = "IncSearch" },
	QuickFixLine = { bg = palette.red, fg = palette.blue },
	Underlined = { underline = true },
	StatusLine = { fg = palette.fg_mode_line_active, bg = palette.bg_mode_line_active },
	StatusLineNC = { fg = palette.fg_mode_line_inactive, bg = palette.bg_mode_line_inactive },
	WinBar = { bg = palette.bg_tab_bar },
	WinBarNC = { link = "WinBar" },
	WinSeparator = { bg = palette.bg_dim },
	Directory = { fg = palette.blue, bold = true },
	Title = { fg = palette.fg_main, bg = palette.bg_main, bold = true },
	MsgArea = { fg = palette.fg_main, bg = palette.bg_main },
	ErrorMsg = { fg = palette.red, bold = true },
	MoreMsg = { fg = palette.yellow, bold = true },
	ModeMsg = { fg = palette.yellow, bold = true },
	Question = { fg = palette.yellow, bold = true },
	WarningMsg = { fg = palette.red, bold = true },
	LineNr = { fg = palette.fg_dim },
	LineNrAbove = { link = "LineNr" },
	LineNrBelow = { link = "LineNr" },
	SignColumn = { bg = palette.bg_main },
	Folded = { fg = palette.fg_main, bg = palette.bg_region_subtle },
	FoldColumn = { fg = palette.fg_main, bg = palette.bg_dim },
	Cursor = { reverse = false },
	vCursor = { link = "Cursor" },
	iCursor = { link = "Cursor" },
	lCursor = { link = "Cursor" },
	Special = { fg = palette.fg_main },
	Comment = { fg = palette.fg_dim, italic = true },
	Todo = { fg = palette.yellow, bold = true },
	Done = { fg = palette.green, bold = true },
	Error = { fg = palette.red, bold = true },
	Statement = { fg = palette.fg_main },
	Conditional = { link = "Statement" },
	Repeat = { link = "Statement" },
	Label = { link = "Statement" },
	Exception = { link = "Statement" },
	Operator = { link = "Statement" },
	Keyword = { fg = palette.blue },
	Identifier = { fg = palette.fg_main },
	Function = { link = "Statement" },
	PreProc = { fg = palette.yellow },
	Include = { link = "PreProc" },
	Define = { link = "PreProc" },
	Macro = { link = "PreProc" },
	PreCondit = { link = "PreProc" },
	Constant = { fg = palette.magenta_warmer },
	Character = { link = "Constant" },
	String = { fg = palette.green },
	Boolean = { link = "Constant" },
	Number = { link = "Constant" },
	Float = { link = "Number" },
	Type = { fg = palette.cyan },
	StorageClass = { link = "Normal" },
	Structure = { link = "Normal" },
	Typedef = { fg = palette.fg_main },
	Pmenu = { bg = palette.bg_dim },
	PmenuSel = { bg = palette.bg_hover, bold = true },
	PmenuSbar = { bg = palette.bg_mode_line_inactive },
	PmenuThumb = { bg = palette.fg_dim },
	DiffDelete = { bg = palette.red_nuanced },
	DiffAdd = { bg = palette.green_nuanced },
	DiffChange = { bg = palette.blue_nuanced },
	DiffText = { bg = palette.blue_subtle },
	DiagnosticError = { fg = palette.red },
	DiagnosticWarn = { fg = palette.yellow },
	DiagnosticInfo = { fg = palette.cyan },
	DiagnosticHint = { fg = palette.fg_dim },
	DiagnosticOk = { fg = palette.fg_dim },
	DiagnosticUnderlineError = { undercurl = true, sp = palette.red },
	DiagnosticUnderlineWarn = { undercurl = true, sp = palette.yellow },
	DiagnosticUnderlineInfo = { undercurl = true, sp = palette.cyan },
	DiagnosticUnderlineHint = { undercurl = true, sp = palette.fg_dim },
	DiagnosticUnderlineOk = { undercurl = true, sp = palette.fg_dim },
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
