origin="$HOME/wtb_i3-gaps"

## one level deep
rsync -av $HOME/.fehbg $HOME/.newsboat $HOME/.Xresources* $HOME/.xinitrc* $HOME/.tmux.conf $HOME/.vim* $HOME/.bashrc $HOME/.urxvt $HOME/wtb_i3-gaps

lvl2="/home/waynes/.config"
## two levels deep
rsync -av $lvl2/dunst $lvl2/i3 $lvl2/i3blocks $lvl2/redshift.conf $lvl2/rofi $HOME/wtb_i3-gaps/.config

rsync -av $HOME/bin/*.sh $HOME/wtb_i3-gaps/bin/

rsync -av $HOME/Pictures/Portugal $HOME/wtb_i3-gaps/Pictures/Portugal

rm -rf $HOME/wtb_i3-gaps/.vim/backup/*

mv $origin/.config $origin/config
mv $origin/.dunst $origin/config/dunst
mv $origin/.i3 $origin/config/i3
mv $origin/.i3blocks $origin/config/i3blocks
mv $origin/.redshift $origin/config/redshift
mv $origin/.rofi $origin/config/rofi

mv $origin/.bashrc $origin/bashrc
mv $origin/.fehbg $origin/fehbg
mv $origin/.newsboat $origin/newsboat
mv $origin/.urxvt $origin/urxvt
mv $origin/.vimrc $origin/vimrc
mv $origin/.xinitrc $origin/xinitrc
mv $origin/.Xresources $origin/Xresources
mv $origin/.tmux.conf $origin/tmux.conf
mv $origin/.vim $origin/vim
