echo Đang tải
wget -O 1.deb https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb &>/dev/null
sudo apt update &>/dev/null && sudo apt install ./1.deb -y &>/dev/null
echo Đang xác nhận mã Debian Linux
echo Đã hoàn thành!
