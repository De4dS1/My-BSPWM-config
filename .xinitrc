#!/bin/bash

numlockx &

exec startx bspwm

xsetroot -cursor_name left_ptr
