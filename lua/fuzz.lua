local fuzz = {}


local palette = {
    black          = "#000000",
    dark_grey      = "#252525",
    light_grey     = "#666666",
    opaque_white   = "#e3dac9",
    white          = "#ffffff",
    green          = "#00824b",
    blue           = "#0099f8",
    orange         = "#f37b25",
    purple         = "#a945ff",
    teal           = "#367588",
    red            = "#fb0905",

    bg_diff_add    = "#0a280a",
    bg_diff_change = "#2a2000",
    bg_diff_remove = "#40160f",
}

fuzz.color_groups = function(p)
    return {
        -- basics
        Conceal                               = { fg = p.white, },
        Comment                               = { fg = p.light_grey, italic = true },
        Constant                              = { fg = p.blue },
        Cursor                                = { fg = p.black, bg = p.blue },
        CursorColumn                          = { fg = p.white, bg = p.dark_grey },
        CursorLine                            = { bg = p.dark_grey, },
        ColorColumn                           = { bg = p.dark_grey },
        CursorLineNr                          = { fg = p.orange, bold = true },
        DiagnosticFloatingError               = { fg = p.red },
        DiagnosticSignError                   = { fg = p.red },
        DiagnosticUnderlineError              = { sp = p.red, underline = true },
        DiagnosticVirtualTextError            = { fg = p.purple },
        DiagnosticFloatingWarn                = { fg = p.green },
        DiagnosticSignWarn                    = { fg = p.teal },
        DiagnosticUnderlineWarn               = { sp = p.green, underline = true },
        DiagnosticVirtualTextWarn             = { fg = p.teal },
        DiffAdd                               = { fg = p.green, bg = p.black },
        DiffChange                            = { fg = p.white, bg = p.black },
        DiffDelete                            = { fg = p.blue, bg = p.black },
        DiffText                              = { fg = p.orange, bg = p.black },
        Directory                             = { fg = p.blue, },
        Error                                 = { fg = p.red, bg = p.black },
        ErrorMsg                              = { fg = p.black, bg = p.red },
        FloatBorder                           = { fg = p.purple },
        FoldColumn                            = { fg = p.orange, bg = p.black },
        Folded                                = { fg = p.orange, bg = p.black },
        Function                              = { fg = p.white, bold = true },
        Identifier                            = { fg = p.green },
        IncSearch                             = { fg = p.white, bg = p.teal },
        LineNr                                = { fg = p.light_grey },
        manBold                               = { fg = p.orange, bold = true },
        manSectionHeading                     = { fg = p.purple, bold = true },
        manReference                          = { fg = p.green, bold = true },
        MatchParen                            = { fg = p.black, bg = p.teal },
        ModeMsg                               = { fg = p.white, },
        MoreMsg                               = { fg = p.white, },
        NonText                               = { fg = p.white, },
        Normal                                = { fg = p.opaque_white, bg = p.black },
        NormalFloat                           = { bg = p.black },
        Operator                              = { fg = p.orange },
        Pmenu                                 = { fg = p.light_grey, bg = p.black },
        PmenuSbar                             = { fg = p.orange },
        PmenuSel                              = { fg = p.black, bg = p.orange, bold = true },
        PmenuThumb                            = { fg = p.dark_grey, bg = p.orange },
        PreProc                               = { fg = p.green, },
        Question                              = { fg = p.white, },
        Search                                = { fg = p.white, bg = p.teal, italic = true },
        SignColumn                            = { bg = p.black },
        Special                               = { fg = p.orange, bold = true },
        SpecialKey                            = { fg = p.blue, },
        SpellBad                              = { sp = p.red, undercurl = true },
        SpellCap                              = { fg = p.purple, bg = p.black },
        SpellRare                             = { fg = p.orange, bg = p.orange },
        SpellLocal                            = { fg = p.blue, bg = p.white },
        Statement                             = { fg = p.purple, bold = true },
        StatusLine                            = { fg = p.white, bg = p.dark_grey },
        StatusLineNC                          = { fg = p.dark_grey, bg = p.white },
        String                                = { fg = p.teal },
        TabLine                               = { fg = p.white, bg = p.dark_grey },
        TabLineFill                           = { fg = p.black, bg = p.white },
        TabLineSel                            = { fg = p.white, },
        Title                                 = { fg = p.white, },
        Todo                                  = { fg = p.orange, bg = p.black },
        Type                                  = { fg = p.orange },
        Underlined                            = { fg = p.blue, },
        Visual                                = { fg = p.white, bg = p.teal },
        VisualNOS                             = { fg = p.white, bg = p.teal },
        WarningMSG                            = { fg = p.purple, },
        WildMenu                              = { fg = p.black, bg = p.orange },
        WinSeparator                          = { fg = p.green },

        -- PLUGINS

        -- Blink
        BlinkCmpDocBorder                     = { fg = p.purple },
        BlinkCmpMenuBorder                    = { fg = p.purple },
        BlinkCmpSignatureHelpBorder           = { fg = p.purple },

        -- Gitsigns
        GitSignsAdd                           = { fg = p.green, bg = p.bg_diff_add, bold = true },
        GitSignsChange                        = { fg = p.orange, bg = p.bg_diff_change, bold = true },
        GitSignsDelete                        = { fg = p.purple, bg = p.bg_diff_remove, bold = true },

        GitSignsAddNr                         = { fg = p.green, bg = p.bg_diff_add, bold = true },
        GitSignsChangeNr                      = { fg = p.orange, bg = p.bg_diff_change, bold = true },
        GitSignsDeleteNr                      = { fg = p.purple, bg = p.bg_diff_remove, bold = true },

        GitSignsAddLn                         = { bg = p.bg_diff_add, bold = true },
        GitSignsChangeLn                      = { bg = p.bg_diff_change, bold = true },
        GitSignsDeleteLn                      = { bg = p.bg_diff_remove, bold = true },

        GitSignsAddInline                     = { fg = p.green, bg = p.bg_diff_add, bold = true },
        GitSignsChangeInline                  = { fg = p.orange, bg = p.bg_diff_change, bold = true },
        GitSignsDeleteInline                  = { fg = p.purple, bg = p.bg_diff_remove, bold = true },

        GitSignsCurrentLineBlame              = { fg = p.light_grey, bold = false },

        -- IndentBlankline
        IblIndent                             = { fg = p.dark_grey },
        IblScope                              = { fg = p.light_grey, underline = false },

        -- Lazy
        LazyNormal                            = { bg = p.black },
        LazyReasonPlugin                      = { fg = p.orange },
        LazySpecial                           = { fg = p.blue },

        -- Mason
        MasonNormal                           = { bg = p.dark_grey },

        -- Neogit
        NeogitDiffAdd                         = { fg = p.green },

        -- Nvim-tree
        NvimTreeNormal                        = { bg = p.black },
        NvimTreeCursorLine                    = { sp = p.blue, underline = true },

        -- Telescope
        TelescopeBorder                       = { fg = p.purple },
        TelescopePreviewLine                  = { bg = p.dark_grey },
        TelescopePreviewMatch                 = { bg = p.dark_grey },
        TelescopePromptBorder                 = { fg = p.purple },
        TelescopePromptTitle                  = { fg = p.orange },
        TelescopeResultsComment               = { fg = p.light_grey },
        TelescopeSelection                    = { bg = p.dark_grey },
        TelescopeTitle                        = { fg = p.orange },

        -- LSP & TREESITTER
        ["@lsp.typemod.function.declaration"] = { fg = p.white },
        ["@lsp.typemod.function.decfinition"] = { fg = p.white },
        ["@lsp.type.function"]                = { fg = p.orange },

        ["@boolean"]                          = { fg = p.blue, bold = true },
        ["@function.call"]                    = { fg = p.orange },
        ["@function.method.call"]             = { fg = p.orange },
        ["@markup.bold"]                      = { bold = true },
        ["@markup.heading"]                   = { fg = p.blue, bold = true },
        ["@markup.italic"]                    = { italic = true },
        ["@markup.link.label"]                = { fg = p.orange },
        ["@markup.link.url"]                  = { fg = p.blue, underline = true, italic = true },
        ["@markup.strong"]                    = { bold = true },
        ["@module"]                           = { fg = p.white },
        ["@punctuation.bracket"]              = { fg = p.green, bold = true },
        ["@punctuation.delimiter"]            = { fg = p.orange },
        ["@string.special.url"]               = { fg = p.teal, underline = true, italic = true },
        ["@tag"]                              = { fg = p.orange },
        ["@tag.builtin"]                      = { link = "@tag" },
        ["@tag.attribute"]                    = { fg = p.orange },
        ["@tag.delimiter"]                    = { fg = p.orange },
        ["@type.builtin"]                     = { fg = p.orange },
        ["@variable"]                         = { fg = p.opaque_white },
        ["@variable.builtin"]                 = { fg = p.white, italic = true },

        -- Org-mode
        ["@org.headline.level1.org"]          = { fg = p.orange, bold = true },
        ["@org.headline.level2.org"]          = { fg = p.blue, bold = true },
        ["@org.headline.level3.org"]          = { fg = p.orange, bold = true },
        ["@org.priority.highest.org"]         = { fg = p.orange, bold = true },
        ["@org.priority.default.org"]         = { fg = p.orange, bold = true },
        ["@org.tag.org"]                      = { fg = p.teal, bold = true },

        -- LaTeX
        texStyleItal                          = { fg = p.teal, italic = true },
        ["@function.latex"]                   = { fg = p.orange, bold = true },
        ["@module.latex"]                     = { fg = p.orange },
        ["@punctuation.bracket.latex"]        = { fg = p.blue },
        ["@variable.parameter.latex"]         = { fg = p.blue },

        -- Markdown
        markdownH1                            = { fg = p.purple, bold = true },
        markdownH1Delimiter                   = { fg = p.purple, bold = true },
        markdownH2                            = { fg = p.orange, bold = true },
        markdownH2Delimiter                   = { fg = p.orange, bold = true },
        markdownH3                            = { fg = p.green, bold = true },
        markdownH3Delimiter                   = { fg = p.green, bold = true },

        -- Elixir
        ["@string.special.symbol.elixir"]     = { fg = p.blue },

        -- Go
        ["@constructor.go"]                   = { fg = p.blue },

        -- Gleam
        ["@constructor.gleam"]                = { fg = p.blue },

        -- Haskell
        ["@constructor.haskell"]              = { fg = p.blue },

        -- Java
        ["@lsp.type.modifier.java"]           = { fg = p.purple, bold = true },
        ["@lsp.mod.constructor.java"]         = { fg = p.blue },

        -- Python
        ["@constant.builtin.python"]          = { fg = p.blue },
        ["@constructor.python"]               = { fg = p.blue },
        ["@function.builtin.python"]          = { fg = p.blue },
        pythonAttribute                       = { fg = p.purple },

        -- Rust
        ["@lsp.type.decorator"]               = { fg = p.white, bold = true },
        ["@lsp.type.escapeSequence.rust"]     = { fg = p.orange, bold = true },
        ["@lsp.type.formatSpecifier.rust"]    = { fg = p.blue, bold = true },
        ["@lsp.type.enum.rust"]               = { fg = p.purple },
        ["@lsp.type.struct.rust"]             = { fg = p.purple },

        -- TODO comments
        -- TODO: complete the TODO comments
        TodoBgTODO                            = { bg = p.purple, fg = p.black },
        TodoFgTODO                            = { fg = p.purple },
    }
end

-- reset colors and load highlights
fuzz.load = function()
    if vim.g.colors_name then
        vim.cmd("hi clear")
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "fuzz"

    for group, opts in pairs(fuzz.color_groups(fuzz.colors)) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

-- load the user's options
fuzz.setup = function(opts)
    fuzz.colors = vim.tbl_deep_extend("force", palette, opts or {})
end

return fuzz
