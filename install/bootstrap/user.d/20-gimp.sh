bootstrap_gimp_dir="$(mktemp -d)"
trap 'rm -rf "$bootstrap_gimp_dir"' EXIT
git clone --depth 1 --recurse-submodules --shallow-submodules \
	-b alt-color-picker https://github.com/jameds/gimp.git "$bootstrap_gimp_dir"
cd "$bootstrap_gimp_dir"
meson setup _build
ninja -C _build
sudo ninja -C _build install
