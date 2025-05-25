#!/bin/bash

config_path=$HOME/.config
share_path=$HOME/.local/share

script_path=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
script_config_path=$script_path/config
script_share_path=$script_path/local/share

rsync -a --files-from=$script_path/config_list.txt $config_path $script_config_path
rsync -a $HOME/.local/share/rofi $script_path

rsync -a --files-from=$script_path/home_list.txt $HOME $script_path
