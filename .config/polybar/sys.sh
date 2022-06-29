#!/bin/bash

chosen=$(printf "  Apagar\n  Reiniciar\n⏾  Suspender" | rofi -dmenu -i -theme-str '@import "sys.rasi"')

case "$chosen" in
	"  Apagar") poweroff ;;
	"  Reiniciar") reboot ;;
	"⏾  Suspender") systemctl suspend ;;
	*) exit 1 ;;
esac
