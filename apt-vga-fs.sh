# Apt-based VirtualBox Guest Additions installation script From Scratch (designed for Debian 10 fresh install)

# run with sudo

if lsmod | grep vboxguest
then
  echo "VirtualBox Guest already installed."
else
  apt update
  apt install build-essential dkms linux-headers-$(uname -r)

  mkdir -p /mnt/cdrom
  mount /dev/cdrom /mnt/cdrom

  sh .//mnt/cdrom/VBoxLinuxAdditions.run --nox11

  echo "You should reboot now."
  echo "When you return run lsmod | grep vboxguest"
fi
