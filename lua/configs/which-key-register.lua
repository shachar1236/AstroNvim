local is_available = astronvim.is_available
local user_plugin_opts = astronvim.user_plugin_opts
local mappings = {
  n = {
    ["<leader>"] = {
      f = { name = "File" },
      p = { name = "Packages" },
      l = { name = "LSP" },
      w = { name = "Window"},
      ["w"] = {
        s = { name = "Split" },
      },
      u = { name = "UI" },
    },
  },
}

local extra_sections = {
  b = "Buffers",
  D = "Debugger",
  g = "Git",
  s = "Search",
  S = "Session",
  t = "Terminal",
}

local function init_table(mode, prefix, idx)
  if not mappings[mode][prefix][idx] then mappings[mode][prefix][idx] = { name = extra_sections[idx] } end
end

-- TODO v3: remove vim.g.heirline_bufferline check
if is_available "heirline.nvim" and vim.g.heirline_bufferline then init_table("n", "<leader>", "b") end

if is_available "neovim-session-manager" then init_table("n", "<leader>", "S") end

if is_available "gitsigns.nvim" then init_table("n", "<leader>", "g") end

if is_available "toggleterm.nvim" then
  init_table("n", "<leader>", "g")
  init_table("n", "<leader>", "t")
end

if is_available "telescope.nvim" then
  init_table("n", "<leader>", "s")
  init_table("n", "<leader>", "g")
end

if is_available "nvim-dap" then init_table("n", "<leader>", "D") end

if is_available "Comment.nvim" then
  for _, mode in ipairs { "n", "v" } do
    if not mappings[mode] then mappings[mode] = {} end
    if not mappings[mode].g then mappings[mode].g = {} end
    mappings[mode].g.c = "Comment toggle linewise"
    mappings[mode].g.b = "Comment toggle blockwise"
  end
end

astronvim.which_key_register(user_plugin_opts("which-key.register", mappings))
