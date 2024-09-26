# Telephone catalog

## Setup

### Host machine

Assuming the server is a Raspberry Pi 4 Model B.

Download the [Raspberry Pi imager](https://www.raspberrypi.com/software/) software. This can also be done by installing it from your package manager (if you are using linux)

|arch|debian|fedora|
|-|-|-|
|```sudo pacman -Syu rpi-imager```|```sudo apt install rpi-imager```|```sudo dnf in rpi-imager```|

Download Ubuntu Server LTS (currently version 24) (64-bit) onto the Raspberry Pi's SD card using the Raspberry Pi imager. Remember to create a user and set up an internet connection in the installer by clicking the **Edit settings** button. You should also add a public key, so you can connect to the Raspberry Pi over ssh.

When you are booted into the system, install git by running

```sh
sudo apt install git
```

### This program

Clone this repository.

```sh
git clone https://github.com/averieyy/telephonecat.git
cd telephonecat
```

Run the setup script by running

```sh
sh ./setup.sh
```

Finally, run main.py with the user phoneboy

```sh
sudo -u phoneboy python3 main.py
```