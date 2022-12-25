#!/bin/bash

conf_dir="$HOME/.config/wezterm"
fonts=".fonts"
conf="wezterm.lua"

git_conf_hash=$(sha256sum "./$conf" | sed 's/ .\/wezterm.lua//g') 

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
    echo "Configuration file already exists!"
  fi

}

conf_replace(){

  echo "Do you want to replace the current config?"
  select yn in "Yes" "No"; do
    case $yn in
      Yes ) cp "./$conf" "$conf_dir/$conf"; break;;
      No ) break;;
    esac
  done

}

validate_hash(){
  echo "$git_conf_hash $conf_dir/$conf" | sha256sum --check --status

  if [ $? -eq 0 ]; then
    echo "Checksum: OK"
    return 0
  else
    echo "Checksum: ALTERED"
    return 1
#    echo "Expected SHA256 hash: $git_conf_hash"
#    echo "Actual SHA256 hash: $(sha256sum "$conf_dir/$conf" | cut -c 1-64 )"
  fi
}

dir_check
conf_copy
validate_hash

if [ $? -eq 1 ]; then
  conf_replace
  validate_hash
fi
