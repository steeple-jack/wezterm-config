local wezterm = require 'wezterm'
return {

  -- Style config

  font_dirs = {'.fonts'},
  font = wezterm.font 'IBMPlexMono-Medium',
  color_scheme = "AyuDark (Gogh)",
  enable_scroll_bar = true,
  
  -- Key Assignments
  
  keys = {

    -- Tab controls
    {key='LeftArrow', mods="ALT", action=wezterm.action.ActivateTabRelative(-1)},
    {key='RightArrow', mods="ALT", action=wezterm.action.ActivateTabRelative(1)},
    {key='t', mods="ALT", action=wezterm.action.SpawnTab 'CurrentPaneDomain'},
    
    -- Close controls
	  {key="w", mods="ALT", action=wezterm.action.CloseCurrentTab{confirm = false}},
	  {key='q', mods="ALT", action = wezterm.action.QuitApplication },
  },
  
}
