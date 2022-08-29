local wezterm = require 'wezterm'
return {

  -- Style config

  font_dirs = {'.fonts'},
  font = wezterm.font 'IBMPlexMono-Medium',
  color_scheme = "AyuDark (Gogh)",
  enable_scroll_bar = true,
  
  -- Key Assignments
  
  keys = {
    {key="d", mods="ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
	{key="d", mods="ALT|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
	{key="LeftArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Left"}},
	{key="RightArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Right"}},
	{key="UpArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Up"}},
	{key="DownArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Down"}},
	{key="h", mods="ALT", action=wezterm.action{ActivatePaneDirection="Left"}},
	{key="l", mods="ALT", action=wezterm.action{ActivatePaneDirection="Right"}},
	{key="k", mods="ALT", action=wezterm.action{ActivatePaneDirection="Up"}},
	{key="j", mods="ALT", action=wezterm.action{ActivatePaneDirection="Down"}},
	{key="z", mods="ALT", action="TogglePaneZoomState"},
	{key="w", mods="ALT", action=wezterm.action.CloseCurrentPane{confirm = false}},
	{key='q', mods="ALT", action = wezterm.action.QuitApplication },
  },
  
}