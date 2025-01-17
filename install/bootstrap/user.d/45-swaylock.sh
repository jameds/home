bootstrap_swaylock_dir="$(mktemp -d)"
trap 'rm -rf "$bootstrap_swaylock_dir"' EXIT
git clone --depth 1 -b nopass https://github.com/jameds/swaylock.git "$bootstrap_swaylock_dir"
cd "$bootstrap_swaylock_dir"
meson setup build
ninja -C build
sudo ninja -C build install
