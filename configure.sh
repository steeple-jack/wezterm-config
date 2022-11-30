#!/bin/bash

conf_dir="$HOME/.config/wezterm/"
fonts=".fonts"
conf="wezterm.lua"

dir_check(){
  if [ ! -d $conf_dir ]; then
    echo "Making configuration directory..."
    mkdir -p $conf_dir
  else
    echo "Configuration directory already exists!"
  fi
}

conf_copy(){

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
}

dir_check
conf_copy

