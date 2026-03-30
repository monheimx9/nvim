-- ~/.config/nvim/lua/plugins/snacks-dashboard.lua
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    -- ensure tables exist so we don't nuke existing settings
    opts.dashboard = opts.dashboard or {}
    opts.dashboard.preset = opts.dashboard.preset or {}

    -- 🔧 override ONLY the header
    opts.dashboard.preset.header = [[
🖱️︵ヽ(`Д´)ﾉ︵🖱️
██╗   ██╗███████╗███████╗████████╗    ████████╗██╗  ██╗███████╗    ███٩◔̯◔۶███╗ ██████╗ ██╗   ██╗███████╗███████╗
╚██╗ ██╔╝██╔════╝██╔════╝╚══██╔══╝    ╚══██╔══╝██║  ██║██╔════╝    ████╗ ████║██╔═══██╗██║   ██║██╔════╝██╔════╝
 ╚████╔╝ █████╗  █████╗     ██║          ██║   ███████║█████╗      ██╔████╔██║██║(･_██║██║   ██║███████╗█████╗  
  ╚██╔╝  ██╔══╝  ██╔══╝     ██║          ██║   ██╔══██║██╔══╝      ██║╚██╔╝██║██║   ██║██║   ██║╚════██║██╔══╝  
   ██║   ███████╗███████╗   ██║          ██║   ██║  ██║███████╗    ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝███████║███████╗
   ╚═╝   ╚══════╝╚══════╝   ╚═╝  ʕ•ᴥ•ʔ   ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
ʕノ•ᴥ•ʔノ︵🖱️

(ง'̀-'́)ง🖮  Only keebs allowed from now on ᕕ( ᐛ )ᕗ ⌨️
]]

    -- (optional) if you want to be sure header is shown
    opts.dashboard.sections = opts.dashboard.sections
      or {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      }

    -- leave everything else untouched
  end,
}
