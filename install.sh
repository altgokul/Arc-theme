#/usr/bin/env bash
dir=$(cd `dirname $0`;pwd)
cd $dir/common/gtk-3.0/3.18
gulp
cd $dir
./autogen.sh --prefix=/usr --disable-gnome-shell --disable-metacity --disable-cinnamon --disable-darker --disable-dark
sudo make install
echo setting the theme
gsettings reset org.gnome.desktop.interface gtk-theme;
gsettings set org.gnome.desktop.interface gtk-theme "Arc"
