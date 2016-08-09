# Compile Vim
echo "Cleaning repo..."
git clean -f
echo "Garbage collection..."
git gc
echo "Reseting repo head..."
git reset --hard HEAD
echo "Pulling changes from remote..."
git pull origin master

./configure --with-features=huge --enable-multibyte --enable-cscope --enable-rubyinterp=dynamic --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-perlinterp=dynamic --enable-luainterp --with-luajit --enable-fail-if-missing --enable-gui=auto 

make clean
sudo make install

