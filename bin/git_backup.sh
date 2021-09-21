## one level deep
rsync -av $HOME/.fehbg $HOME/.newsboat $HOME/.Xresources* $HOME/.xinitrc* $HOME/.tmux* $HOME/.vim* $HOME/.bashrc* $HOME/git_i3-wtb/

lvl2="/home/waynes/.config"
## two levels deep
rsync -av $lvl2/i3 $lvl2/i3blocks $lvl2/redshift.conf $lvl2/rofi $HOME/git_i3-wtb/.config

rsync -av $HOME/bin/*.sh $HOME/git_i3-wtb/bin/

rm -rf $HOME/git_i3-wtb/.vim/backup/*
