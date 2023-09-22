blank=~/.config/hypr/blank.frag
shader=~/.config/hypr/shader.frag
current="$(hyprctl getoption decoration:screen_shader -j | jq -r '.str' )"

if [[ "$current" == "$blank" ]]; then
  hyprctl keyword decoration:screen_shader "$shader"
else
  hyprctl keyword decoration:screen_shader "$blank"
fi
