#!/bin/bash
set -e

echo "Setting up RHCSA Exam Simulator..."

# Update system
apt-get update -qq

# Install required packages
apt-get install -y \
    network-manager \
    apache2 \
    chrony \
    autofs \
    nfs-common \
    lvm2 \
    cron \
    ufw \
    tuned \
    parted \
    bzip2 \
    tar \
    rsyslog \
    wget \
    curl

# Install ttyd for web terminal
wget -q https://github.com/tsl0922/ttyd/releases/download/1.7.4/ttyd.x86_64 -O /usr/local/bin/ttyd
chmod +x /usr/local/bin/ttyd

# Copy scripts to root
cp -r /workspaces/*/rhcsa-simulator/* /root/ 2>/dev/null || true
cp /workspaces/*/setup_lab_ubuntu.sh /root/ 2>/dev/null || true
cp /workspaces/*/rhcsa_exam_menu.sh /root/ 2>/dev/null || true
cp /workspaces/*/questions.txt /root/ 2>/dev/null || true

# Make scripts executable
chmod +x /root/*.sh 2>/dev/null || true

# Create startup script
cat > /usr/local/bin/start-rhcsa <<'EOF'
#!/bin/bash
cd /root
ttyd -p 7681 -W ./rhcsa_exam_menu.sh
EOF

chmod +x /usr/local/bin/start-rhcsa

echo ""
echo "✅ RHCSA Simulator setup complete!"
echo ""
echo "To start the exam simulator:"
echo "  1. Run: start-rhcsa"
echo "  2. Open the forwarded port 7681 in your browser"
echo "  3. Or run directly: ./rhcsa_exam_menu.sh"
echo ""

# Made with Bob
