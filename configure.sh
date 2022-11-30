#!/bin/bash

conf_dir="/home/chef/.config/wezterm/"
fonts=".fonts"
conf="wezterm.lua"

if [ ! -d "$conf_dir/$fonts" ]; then
  echo "Copying fonts..."
  cp -r "./$fonts" $conf_dir/
else
  echo "Fonts already exists!"
fi

if [ ! -f "$conf_dir/$conf" ]; then
  echo "Copying config file..."
  cp "./$conf" $conf_dir/
else
  echo "Configuration file already exist!"
fi


