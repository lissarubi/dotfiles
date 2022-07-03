#!/bin/sh

getDefaultSource() {
    defaultSource=$(pactl info | awk -F : '/Default Source:/{print $2}')
    description=$(pactl list sources | sed -n "/${defaultSource}/,/Description/p; /Description/q" | sed -n 's/^.*Description: \(.*\)$/\1/p')
    echo "${description}"
}

VOLUME=$(pamixer --get-volume-human)
SOURCE=$(getDefaultSource)

case $1 in
    "--up")
        pamixer --increase 10
        ;;
    "--down")
        pamixer --decrease 10
        ;;
    "--mute")
        pamixer --toggle-mute
        ;;
    *)
        echo "VOL: ${VOLUME}"
esac
