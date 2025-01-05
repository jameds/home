mkdir -p /etc/iwd
cat > /etc/iwd/main.conf <<EOT
[General]
EnableNetworkConfiguration=true
EOT
systemctl enable --now systemd-resolved
ln -sf ../run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
