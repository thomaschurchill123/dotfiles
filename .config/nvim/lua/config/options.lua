-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local g = vim.g

opt.relativenumber = false

g.clipboard = {
  name = "OSC 52",
  copy = {
    ["+"] = require("vim.clipboard.osc52").copy,
    ["*"] = require("vim.clipboard.osc52").copy,
  },
  paste = {
    ["+"] = require("vim.clipboard.osc52").paste,
    ["*"] = require("vim.clipboard.osc52").paste,
  },
}

