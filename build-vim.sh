# Install vim 2.8 on Centos

LIBEVENT_PATH=/home/lmontech/libs/libevent/lib
NCURSES_PATH=/home/lmontech/libs/ncurses/lib
INSTALL_PATH=/home/lmontech/bin/install/vim

# install deps
yum install gcc kernel-devel make ncurses-devel

# download sources for vim and make and install
curl -LOk https://github.com/vim/vim/archive/refs/tags/v8.2.3455.tar.gz
tar -xf v8.2.3455.tar.gz
cd ./vim-8.2.3455
LDFLAGS="-L${LIBEVENT_PATH} -L${NCURSES_PATH}" ./configure --prefix=${INSTALL_PATH}
make
make install
