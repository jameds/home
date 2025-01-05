git clone -b zoom-options https://github.com/jameds/Viewnior.git
cd Viewnior
meson setup builddir
ninja -C builddir
sudo ninja -C builddir install
