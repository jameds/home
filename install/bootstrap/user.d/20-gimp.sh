git clone -b alt-color-picker https://github.com/jameds/gimp.git
cd gimp
meson setup _build
ninja -C _build
sudo ninja -C _build install
