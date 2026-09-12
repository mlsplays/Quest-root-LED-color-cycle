
RED_LED="/sys/class/leds/red/brightness"
GREEN_LED="/sys/class/leds/green/brightness"
BLUE_LED="/sys/class/leds/blue/brightness"

#  the 3 colors to cycle through (R G B, each 0-255) 
COLOR1="255 0 0"     
COLOR2="0 255 0"     
COLOR3="0 0 255"     

DELAY="${1:-1}"

clamp() {
    if [ "$1" -lt 0 ]; then echo 0
    elif [ "$1" -gt 255 ]; then echo 255
    else echo "$1"
    fi
}

set_rgb() {
    echo "$(clamp "$1")" > "$RED_LED"
    echo "$(clamp "$2")" > "$GREEN_LED"
    echo "$(clamp "$3")" > "$BLUE_LED"
}

while true; do
    for color in "$COLOR1" "$COLOR2" "$COLOR3"; do
        set -- $color
        set_rgb "$1" "$2" "$3"
        sleep "$DELAY"
    done
done
