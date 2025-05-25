#!/bin/bash

config_path=$HOME/.config
share_path=$HOME/.local/share

script_path=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
script_config_path=$script_path/config
script_share_path=$script_path/local/share

rsync -a $script_config_path/* $config_path
rsync -a $script_share_path/* $share_path
rsync -a $script_path/.* $HOME

# for x in $(cat package_list.txt); do pacman -S --noconfirm --needed $x; done
# for x in $(cat package_list.txt); do yay -S --noconfirm --needed $x; done
