#!/bin/bash

current_plan=$(powerprofilesctl get)

case $current_plan in
  performance)
    exec echo "Performance ";;
  balanced)
    exec echo "Balanced ";;
  power-saver)
    exec echo "Power-Saver ";;
esac
