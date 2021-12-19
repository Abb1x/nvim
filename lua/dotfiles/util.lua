local _2afile_2a = "fnl/dotfiles/util.fnl"
local _1_
do
  local name_4_auto = "dotfiles.util"
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
    return {autoload("aniseed.core"), autoload("aniseed.nvim")}
  end
  ok_3f_21_auto, val_22_auto = pcall(_5_)
  if ok_3f_21_auto then
    _1_["aniseed/local-fns"] = {autoload = {a = "aniseed.core", nvim = "aniseed.nvim"}}
    return val_22_auto
  else
    return print(val_22_auto)
  end
end
local _local_4_ = _6_(...)
local a = _local_4_[1]
local nvim = _local_4_[2]
local _2amodule_2a = _1_
local _2amodule_name_2a = "dotfiles.util"
do local _ = ({nil, _1_, nil, {{}, nil, nil, nil}})[2] end
local expand
do
  local v_23_auto
  do
    local v_25_auto
    local function expand0(path)
      return nvim.fn.expand(path)
    end
    v_25_auto = expand0
    _1_["expand"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["expand"] = v_23_auto
  expand = v_23_auto
end
local glob
do
  local v_23_auto
  do
    local v_25_auto
    local function glob0(path)
      return nvim.fn.glob(path, true, true, true)
    end
    v_25_auto = glob0
    _1_["glob"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["glob"] = v_23_auto
  glob = v_23_auto
end
local exists_3f
do
  local v_23_auto
  do
    local v_25_auto
    local function exists_3f0(path)
      return (nvim.fn.filereadable(path) == 1)
    end
    v_25_auto = exists_3f0
    _1_["exists?"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["exists?"] = v_23_auto
  exists_3f = v_23_auto
end
local lua_file
do
  local v_23_auto
  do
    local v_25_auto
    local function lua_file0(path)
      return nvim.ex.luafile(path)
    end
    v_25_auto = lua_file0
    _1_["lua-file"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["lua-file"] = v_23_auto
  lua_file = v_23_auto
end
local config_path
do
  local v_23_auto
  do
    local v_25_auto = nvim.fn.stdpath("config")
    do end (_1_)["config-path"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["config-path"] = v_23_auto
  config_path = v_23_auto
end
local nnoremap
do
  local v_23_auto
  do
    local v_25_auto
    local function nnoremap0(from, to, opts)
      local map_opts = {noremap = true}
      local to0 = (":" .. to .. "<cr>")
      if a.get(opts, "local?") then
        return nvim.buf_set_keymap(0, "n", from, to0, map_opts)
      else
        return nvim.set_keymap("n", from, to0, map_opts)
      end
    end
    v_25_auto = nnoremap0
    _1_["nnoremap"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["nnoremap"] = v_23_auto
  nnoremap = v_23_auto
end
local lnnoremap
do
  local v_23_auto
  do
    local v_25_auto
    local function lnnoremap0(from, to)
      return nnoremap(("<leader>" .. from), to)
    end
    v_25_auto = lnnoremap0
    _1_["lnnoremap"] = v_25_auto
    v_23_auto = v_25_auto
  end
  local t_24_auto = (_1_)["aniseed/locals"]
  t_24_auto["lnnoremap"] = v_23_auto
  lnnoremap = v_23_auto
end
return nil