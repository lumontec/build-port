# Install ncurses

INSTALL_PATH=/home/lmontech/libs/ncurses

# install deps
yum install gcc kernel-devel make ncurses-devel

# DOWNLOAD SOURCES FOR NCURSES AND MAKE AND INSTALL
curl -LOk https://github.com/mirror/ncurses/archive/refs/tags/v6.0.tar.gz
tar -xf v6.0.tar.gz
cd ncurses-6.0 
#./configure --with-shared --with-termlib --enable-pc-files --with-pkg-config-libdir=${INSTALL_PATH}/lib/pkgconfig --prefix=${INSTALL_PATH}
./configure --enable-pc-files --with-pkg-config-libdir=${INSTALL_PATH}/lib/pkgconfig --prefix=${INSTALL_PATH}
make
make install
