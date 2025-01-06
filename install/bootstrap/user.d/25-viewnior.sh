bootstrap_viewnior_dir="$(mktemp -d)"
trap 'rm -rf "$bootstrap_viewnior_dir"' EXIT
git clone --depth 1 -b zoom-options https://github.com/jameds/Viewnior.git "$bootstrap_viewnior_dir"
cd "$bootstrap_viewnior_dir"
meson setup builddir
ninja -C builddir
sudo ninja -C builddir install
