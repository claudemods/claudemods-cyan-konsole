#!/bin/bash
cd /home/$USER && git clone https://github.com/claudemods/claudemods-cyan-konsole
cp -r /home/$USER/claudemods-cyan-konsole/claudemods-cyan.colorscheme /home/$USER/.local/share/konsole
cp -r /home/$USER/claudemods-cyan-konsole/claudemods-cyan.profile /home/$USER/.local/share/konsole
sed -i '/^\[Desktop Entry\]/,/^\[/ s/^DefaultProfile=.*/DefaultProfile=claudemods-cyan.profile/' ~/.config/konsolerc
rm -rf /home/$USER/claudemods-cyan-konsole
sleep 1 &
killall konsole && nohup konsole &
echo claudemods cyan konsole scheme installed

