xcompmgr &
nitrogen --restore &
nm-applet &
volumeicon &
xrdb -merge ~/.Xresources
exec i3 -V >> ~/.i3/log-$(date +'%F-%k-%M-%S') 2>&1

