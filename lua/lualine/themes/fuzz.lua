local p = {
    black        = "#000000",
    dark_grey    = "#252525",
    light_grey   = "#666666",
    opaque_white = "#e3dac9",
    white        = "#ffffff",
    green        = "#00824b",
    medium_green = "#007200",
    bright_green = "#20de20",
    blue         = "#0099f8",
    orange       = "#f37b25",
    purple       = "#a945ff",
    teal         = "#367588",
    red          = "#fb0905",
}

return {
    normal = {
        a = { bg = p.black, fg = p.purple, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.purple }
    },
    insert = {
        a = { bg = p.black, fg = p.green, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.white }
    },
    visual = {
        a = { bg = p.black, fg = p.purple, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.black }
    },
    replace = {
        a = { bg = p.black, fg = p.red, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.white }
    },
    command = {
        a = { bg = p.black, fg = p.teal, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.black }
    },
    inactive = {
        a = { bg = p.dark_grey, fg = p.light_grey, gui = "bold" },
        b = { bg = p.dark_grey, fg = p.white },
        c = { bg = p.dark_grey, fg = p.light_grey }
    }
}
