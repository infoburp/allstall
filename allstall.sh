#!/bin/bash
ARRAY=('pacman -Si $1|sed -n '/Depends\ On/,/:/p'|sed '$d'|cut -d: -f2')
for item in ARRAY do
sudo pacman -S $item
done
