local _2afile_2a = "general.fnl"
local _1_
do
  local name_4_auto = "dotfiles.core"
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
    return {require("dotfiles.plugins.init")}
  end
  ok_3f_21_auto, val_22_auto = pcall(_5_)
  if ok_3f_21_auto then
    _1_["aniseed/local-fns"] = {require = {plugins = "dotfiles.plugins.init"}}
    return val_22_auto
  else
    return print(val_22_auto)
  end
end
local _local_4_ = _6_(...)
local plugins = _local_4_[1]
local _2amodule_2a = _1_
local _2amodule_name_2a = "dotfiles.core"
do local _ = ({nil, _1_, nil, {{}, nil, nil, nil}})[2] end
local setup
do
  local v_23_auto
  do
    local v_25_auto
    local function setup0()
      local nvim = require("aniseed.nvim")
      local feline = require("feline")
      feline.setup()
      nvim.o.termguicolors = true
      nvim.o.number = true
      nvim.o.syntax = "on"
      nvim.o.tabstop = 4
      nvim.ex.colorscheme("onedark")
      return plugins.setup()
    end
    v_25_auto = setup0
    _1_["setup"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["setup"] = v_23_auto
  setup = v_23_auto
end
return nil

