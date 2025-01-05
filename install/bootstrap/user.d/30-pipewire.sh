systemctl --user enable --now pipewire pipewire-pulse
pactl set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo
pactl set-sink-volume alsa_output.pci-0000_00_1f.3.analog-stereo 100%
