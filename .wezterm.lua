local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme_dirs = { '~/.config/wezterm/colors' }
config.color_scheme = 'Everforest Dark (Hard)'
config.font = wezterm.font 'Cascadia Code'
config.font_size = 10
config.window_padding = {
  left   = 16,
  right  = 16,
  top    = 16,
  bottom = 16
}
config.use_fancy_tab_bar = false
config.colors = {
  tab_bar = {
    background = '#232A2E',
    active_tab = {
      bg_color = '#83C092',
      fg_color = '#232A2E'
    },
    inactive_tab = {
      bg_color = '#3D484D',
      fg_color = '#D3C6AA'
    },
    inactive_tab_hover = {
      bg_color = '#475258',
      fg_color = '#D3C6AA'
    },
    new_tab = {
      bg_color = '#3D484D',
      fg_color = '#D3C6AA'
    },
    new_tab_hover = {
      bg_color = '#475258',
      fg_color = '#D3C6AA'
    }
  }
}

wezterm.on('format-window-title', function(tab, pane, tabs, panes, config)
  if tab.active_pane.title == 'hx' then
    return '🧬 Helix'
  end
  return ' ' .. tab.active_pane.title
end)

return config
