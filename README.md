# Telephone catalog

## Setup

### Host machine

Assuming the server is a Raspberry Pi 4 Model B.

Download the [Raspberry Pi imager](https://www.raspberrypi.com/software/) software. This can also be done by installing it from your package manager (if you are using linux)

|arch|debian|fedora|
|-|-|-|
|```sudo pacman -Syu rpi-imager```|```sudo apt install rpi-imager```|```sudo dnf in rpi-imager```|

Download Ubuntu Server LTS (currently version 24) (64-bit) onto the Raspberry Pi's SD card using the Raspberry Pi imager. Remember to create a user and set up an internet connection in the installer by clicking on the **Edit settings** button.

When you have booted into the system, install the dependencies below.

|dependencies|dnf package (fedora)|pacman (arch linux)|apt package (debian-based)
|-|-|-|-
|postgres|postgresql-server, postgresql|postgresql|postgresql, postgresql-client
|python|python3|python3|python3
|git|git|git|git

### This program

Clone this repository.

```
git clone https://github.com/averieyy/telephonecat.git
cd telephonecat
```

Create a database in postgres. By default, postgres has created a user called "postgres", but you can create a new user if you wish.

```
createdb -U postgres telephone
```

Then, create a file called ```.secrets.json``` with the following contents:

```json
{
  "db": "telephone",
  "user": "postgres",
  "password": "<your sql password>"
}
```

Finally, run main.py

```
python3 main.py
```