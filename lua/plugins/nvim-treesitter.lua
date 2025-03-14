return {
  "nvim-treesitter/nvim-treesitter",

  opts = function(_, opts)
    local function add(lang)
      if type(opts.ensure_installed) == "table" then
        table.insert(opts.ensure_installed, lang)
      end
    end

    -- Define the 'have' function
    local function have(bin)
      return vim.fn.executable(bin) == 1
    end

    vim.filetype.add({
      extension = { rasi = "rasi", rofi = "rasi", wofi = "rasi" },
      filename = {
        ["vifmrc"] = "vim",
      },
      pattern = {
        [".*/waybar/config"] = "jsonc",
        [".*/mako/config"] = "dosini",
        [".*/kitty/.+%.conf"] = "kitty",
        [".*/hypr/.+%.conf"] = "hyprlang",
        ["%.env%.[%w_.-]+"] = "sh",
        ["%.env"] = "sh",
      },
    })

    -- Register Treesitter language parsers
    vim.treesitter.language.register("bash", "kitty")
    vim.treesitter.language.register("sh", "env")
    add("git_config")

    if have("hyprctl") then -- Ensure the correct binary name
      add("hyprlang")
    end

    if have("fish") then
      add("fish")
    end

    if have("rofi") or have("wofi") then
      add("rasi")
    end
  end,
}
