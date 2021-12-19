local _2afile_2a = "fnl/dotfiles/plugins/lspconfig.fnl"
local _1_
do
  local name_4_auto = "dotfiles.plugins.lspconfig"
  local module_5_auto
  do
    local x_6_auto = _G.package.loaded[name_4_auto]
    if ("table" == type(x_6_auto)) then
      module_5_auto = x_6_auto
    else
      module_5_auto = {}
    end
  end
  module_5_auto["aniseed/module"] = name_4_auto
  module_5_auto["aniseed/locals"] = ((module_5_auto)["aniseed/locals"] or {})
  do end (module_5_auto)["aniseed/local-fns"] = ((module_5_auto)["aniseed/local-fns"] or {})
  do end (_G.package.loaded)[name_4_auto] = module_5_auto
  _1_ = module_5_auto
end
local autoload
local function _3_(...)
  return (require("aniseed.autoload")).autoload(...)
end
autoload = _3_
local function _6_(...)
  local ok_3f_21_auto, val_22_auto = nil, nil
  local function _5_()
    return {autoload("aniseed.nvim"), autoload("dotfiles.util")}
  end
  ok_3f_21_auto, val_22_auto = pcall(_5_)
  if ok_3f_21_auto then
    _1_["aniseed/local-fns"] = {autoload = {nvim = "aniseed.nvim", util = "dotfiles.util"}}
    return val_22_auto
  else
    return print(val_22_auto)
  end
end
local _local_4_ = _6_(...)
local nvim = _local_4_[1]
local util = _local_4_[2]
local _2amodule_2a = _1_
local _2amodule_name_2a = "dotfiles.plugins.lspconfig"
do local _ = ({nil, _1_, nil, {{}, nil, nil, nil}})[2] end
local map
do
  local v_23_auto
  local function map0(from, to)
    return util.nnoremap(from, to)
  end
  v_23_auto = map0
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["map"] = v_23_auto
  map = v_23_auto
end
local completion = require("completion")
local signature = require("lsp_signature")
local signature_cfg = {bind = true, hint_enable = false}
local on_attach
do
  local v_23_auto
  do
    local v_25_auto
    local function on_attach0(client, bufnr)
      completion.on_attach(client, bufnr)
      signature.on_attach(signature_cfg, bufnr)
      if client.resolved_capabilities.document_formatting then
        nvim.command("augroup Format")
      end
      nvim.command("autocmd! * <buffer>")
      nvim.command("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
      return nvim.command("augroup END")
    end
    v_25_auto = on_attach0
    _1_["on_attach"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["on_attach"] = v_23_auto
  on_attach = v_23_auto
end
local lsp = require("lspconfig")
if lsp then
  lsp.clangd.setup({on_attach = on_attach})
  lsp.dartls.setup({on_attach = on_attach})
  lsp.hls.setup({on_attach = on_attach})
  lsp.pylsp.setup({on_attach = on_attach})
  return map("zx", "lua vim.lsp.buf.formatting()")
end