#!/usr/bin/env bash
#
# toggle-wallpaper.sh
# Toggles between mpvpaper and swww wallpaper backends,
# sending a swaync notification for each action.

# Find running PIDs (exact match)
MPVPIDS=$(pgrep -x mpvpaper)
SWWWPIDS=$(pgrep -x swww)
SWWWDPIDS=$(pgrep -x swww-daemon)

if [[ -n "$MPVPIDS" ]]; then
  # mpvpaper is running → switch to swww
  kill $MPVPIDS
  swww-daemon --format xrgb
  notify-send "Stopped mpvpaper; starting swww" # placeholder message
elif [[ -n "$SWWWPIDS" ]]; then
  swww is running → switch to mpvpaper
  kill $SWWWPIDS
  kill $SWWWDPIDS
  mpvpaper -vs -o "--video-zoom=0.2 --loop-playlist " eDP-1 /home/nick/live-wallpaper.mp4
  notify-send "Stopped swww; starting mpvpaper" # placeholder message
else
  # Neither running → start mpvpaper by default
  mpvpaper -vs -o "--video-zoom=0.2 --loop-playlist " eDP-1 /home/nick/live-wallpaper.mp4
  notify-send "No wallpaper process found; starting mpvpaper" # placeholder message
fi
