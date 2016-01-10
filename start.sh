#!/bin/bash

Xvfb $DISPLAY -ac -nopn -screen 0 $1 &
x11vnc -nopw -forever