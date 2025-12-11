local function set_indent(width)
  vim.opt_local.tabstop = width
  vim.opt_local.shiftwidth = width
  vim.opt_local.softtabstop = width
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "java", "cs" },
  callback = function()
    set_indent(4)
  end,
})