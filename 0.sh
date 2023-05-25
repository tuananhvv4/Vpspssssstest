
read -p "Nhập token của bạn:" $CRP
echo Đang tải Ngrok
echo .................
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update &>/dev/null 
sudo apt install ngrok -y &>/dev/null
ngrok authtoken $CRP &>/dev/null
echo Đã lưu token 
echo .................
echo Đang cài đặt
sudo apt install qemu novnc net-tools dbus-x11 qemu-utils qemu-system-x86-xen -y &>/dev/null
echo .................
echo Dung lượng ổ đĩa được tạo là 999G
qemu-img create -f raw windows.img 999G &>/dev/null
echo .................
echo Đang tải file Android
wget -O virtio-win.iso 'https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/archive-virtio/virtio-win-0.1.185-2/virtio-win-0.1.185.iso' &>/dev/null
wget -O windows.iso 'https://t.ly/6h6i' &>/dev/null
echo .................
echo Đã xong!
echo .................
echo Đang bật NoVNC
/usr/share/novnc/utils/launch.sh --listen 8080 --vnc localhost:5900 &>/dev/null &
ngrok http 8080 &>/dev/null &
echo .................
echo Đã xong!
echo Đang bật Android.....
echo .................
echo Đã xong!
echo Đường Link NoVNC là:
echo .................
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"ngrok-free:..([^"]*).*/\1/p'
echo "Nếu lỗi, hãy vào đường link sau để lấy link"
echo "https://dashboard.ngrok.com/tunnels/agents"
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
qemu-system-x86_64 -m 3G -cpu host -enable-kvm -boot order=d -drive file=windows.iso,media=cdrom -drive file=windows.img,format=raw,if=virtio -drive file=virtio-win.iso,media=cdrom -device usb-ehci,id=usb,bus=pci.0,addr=0x4 -device usb-tablet -vnc :0
