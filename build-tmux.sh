# Install tmux 2.8 on Centos

LIBEVENT_PATH=/home/lmontech/libs/libevent/lib
NCURSES_PATH=/home/lmontech/libs/ncurses/lib
export PKG_CONFIG_PATH=${LIBEVENT_PATH}/pkgconfig:${NCURSES_PATH}/pkgconfig
INSTALL_PATH=/home/lmontech/bin/install/tmux

# install deps
yum install gcc kernel-devel make ncurses-devel

# DOWNLOAD SOURCES FOR TMUX AND MAKE AND INSTALL
curl -LOk https://github.com/tmux/tmux/releases/download/2.8/tmux-2.8.tar.gz
tar -xf tmux-2.8.tar.gz
cd tmux-2.8
LDFLAGS="-L${LIBEVENT_PATH} -L${NCURSES_PATH} -Wl,-rpath=${LIBEVENT_PATH}" ./configure --prefix=${INSTALL_PATH}
make
make install

