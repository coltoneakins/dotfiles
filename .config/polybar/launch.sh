#!/usr/bin/env fish

killall -q polybar


while pgrep -x polybar >/dev/null
    sleep 2
end

# Launch top bar
polybar --config=$HOME/.config/polybar/config top 2> /dev/null &
sleep 2
polybar --config=$HOME/.config/polybar/config bottom 2> /dev/null &
