#!/bin/bash

# Matar las polybar existentes
killall -q polybar
#Esperando a que terminen de cerrarce
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#Ejecución
polybar espacios -c ~/.config/polybar/config.ini &
polybar sys -c ~/.config/polybar/config.ini &
polybar tray -c ~/.config/polybar/config.ini &
polybar sonido -c ~/.config/polybar/config.ini &
polybar fecha -c ~/.config/polybar/config.ini &

