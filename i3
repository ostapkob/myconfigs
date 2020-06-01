
set $mod Mod4

# Font for window titles. Will also be used by the bar unless a different font
# is used in the bar {} block below.
# font pango:monospace 8
font pango:System San Francisco Display 8

# This font is widely installed, provides lots of unicode glyphs, right-to-left

# Use Mouse+$mod to drag floating windows to their wanted position
floating_modifier $mod

# start a terminal
bindsym $mod+Return exec i3-sensible-terminal

# kill focused window
bindsym $mod+Shift+q kill

# start dmenu (a program launcher)
# bindsym $mod+d exec dmenu_run
# There also is the (new) i3-dmenu-desktop which only displays applications
# shipping a .desktop file. It is a wrapper around dmenu, so you need that
# installed.
# bindsym $mod+d exec --no-startup-id i3-dmenu-desktop

# change focus
bindsym $mod+h focus left
bindsym $mod+j focus down
bindsym $mod+k focus up
bindsym $mod+l focus right
# bindsym $mod+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused window
bindsym $mod+Shift+h move left
bindsym $mod+Shift+j move down
bindsym $mod+Shift+k move up
bindsym $mod+Shift+l move right

# alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+g split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+w layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+a focus parent

# focus the child container
#bindsym $mod+d focus child

# Define names for default workspaces for which we configure key bindings later on.
# We use variables to avoid repeating the names in multiple places.
set $ws1 "Terminal "
set $ws2 "Web "
set $ws3 "Vim "
set $ws4 "File "
set $ws5 "5"
set $ws6 "6"
set $ws7 "7"
set $ws8 "8"
set $ws9 "9"
set $ws10 "Music ♫"

# switch to workspace
bindsym $mod+1 workspace $ws1
bindsym $mod+2 workspace $ws2
bindsym $mod+3 workspace $ws3
bindsym $mod+4 workspace $ws4
bindsym $mod+5 workspace $ws5
bindsym $mod+6 workspace $ws6
bindsym $mod+7 workspace $ws7
bindsym $mod+8 workspace $ws8
bindsym $mod+9 workspace $ws9
bindsym $mod+0 workspace $ws10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $ws1
bindsym $mod+Shift+2 move container to workspace $ws2
bindsym $mod+Shift+3 move container to workspace $ws3
bindsym $mod+Shift+4 move container to workspace $ws4
bindsym $mod+Shift+5 move container to workspace $ws5
bindsym $mod+Shift+6 move container to workspace $ws6
bindsym $mod+Shift+7 move container to workspace $ws7
bindsym $mod+Shift+8 move container to workspace $ws8
bindsym $mod+Shift+9 move container to workspace $ws9
bindsym $mod+Shift+0 move container to workspace $ws10

# reload the configuration file
bindsym $mod+Shift+c reload
# exit i3 (logs you out of your X session)
# bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"
bindcode $mod+Shift+27 restart
# exit i3 (logs you out of your X session)
bindcode $mod+Shift+26 exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'"

# resize window (you can also use the mouse for that)


exec i3-config-wizard
bindsym $mod+shift+x exec i3lock

# # Pulse Audio controls
# bindsym XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume 0 +5% #increase sound volume
# bindsym XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume 0 -5% #decrease sound volume
# bindsym XF86AudioMute exec --no-startup-id pactl set-sink-mute 0 toggle # mute sound

# # Sreen brightness controls
# bindsym XF86MonBrightnessUp exec xbacklight -inc 20 # increase screen brightness
# bindsym XF86MonBrightnessDown exec xbacklight -dec 20 # decrease screen brightness

# # Touchpad controls
# bindsym XF86TouchpadToggle exec /some/path/toggletouchpad.sh # toggle touchpad

# # Media player controls
# bindsym XF86AudioPlay exec playerctl play
# bindsym XF86AudioPause exec playerctl pause
# bindsym XF86AudioNext exec playerctl next
# bindsym XF86AudioPrev exec playerctl previous

bindsym XF86AudioRaiseVolume exec amixer -q set Master 2dB+ unmute
bindsym XF86AudioLowerVolume exec amixer -q set Master 2dB- unmute
bindsym XF86AudioMute exec amixer -q set Master toggle

exec_always feh --bg-scale /home/ostap/Pictures/maxresdefault.jpg 
# assign [class="chromium"] $ws2
#use comand -> prop | grep "^WM_CLASS"

assign [class="^Chromium$"]  $ws2
assign [class="^Ranger$"] $ws4
assign [class="Rhythmbox"] $ws10

set $bg-color 	         #2f343f
set $inactive-bg-color   #1a2421
set $text-color          #f3f4f5
set $inactive-text-color #676E7D
set $urgent-bg-color     #E53935
set $edge-border-color   #3344bb
# window colors
#                       border              background         text                  indicator
client.focused          $bg-color           $bg-color          $text-color          $edge-border-color
client.unfocused        $inactive-bg-color  $inactive-bg-color $inactive-text-color $edge-border-color
client.focused_inactive $inactive-bg-color  $inactive-bg-color $inactive-text-color $edge-border-color
client.urgent           $urgent-bg-color    $urgent-bg-color   $text-color          $edge-border-color
#
# bar
bar {
  	# status_command i3blocks -c /home/booker/.i3/i3blocks.conf
    status_command i3status
	colors {
		background $bg-color
	    	separator #757575
		#                  border             background         text
		focused_workspace  $bg-color          $bg-color          $text-color
		inactive_workspace $inactive-bg-color $inactive-bg-color $inactive-text-color
		urgent_workspace   $urgent-bg-color   $urgent-bg-color   $text-color
	}
}

exec_always xmodmap -e "keysym Caps_Lock = Escape" #set caps_lock as escape
exec_always xmodmap -e "clear lock" #disable caps lock switch

# exec --no-startup-id ranger
exec chromium
exec firefox
exec --no-startup-id i3-msg '$ws2; exec xterm -e ranger'
# exec ranger
bindsym $mod+d exec dmenu_run -nb black -sb tomato -l 10

#title ws off
default_border pixel 

for_window [tiling] border pixel 3
exec compton --inactive-dim 0.2 --no-fading-openclose --inactive-dim-fixed --config /dev/null
mode "resize" {
        bindsym $left resize shrink width 40 px
        bindsym $down resize grow height 40 px
        bindsym $up resize shrink height 40 px
        bindsym $right resize grow width 40 px

        bindsym Left resize shrink width 10 px
        bindsym Down resize grow height 10 px
        bindsym Up resize shrink height 10 px
        bindsym Right resize grow width 10 px

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}
# resize mode
bindsym $mod+27 mode "resize"
exec "setxkbmap -layout en,ru"
exec "setxkbmap -option 'grp:alt_shift_toggle'"
exec setxkbmap "us,ru" ",winkeys" "grp:alt_shift_toggle,grp_led:scroll" &
# bindsym $mod+i exec --no-startup-id i3-msg '$ws4; exec /usr/bin/ranger'
# bindsym $mod+b exec urvxt -e vim
bindsym $mod+p exec "notify-send whoami"
bindsym $mod+b exec --no-startup-id /usr/bin/neofetch
# exec gnome-terminal
