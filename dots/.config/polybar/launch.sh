 #!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar
polybar main -r &
polybar mainMultiple -r &
polybar hdmi -r &
polybar displayPort -r &

echo "Bars launched..."
