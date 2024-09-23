# Telephone catalog

Please note these instuctions may be somewhat unpolished

First, you should make sure you have a fully set up development enviroment.

|dependencies|dnf package (fedora)|pacman (arch linux)|apt package (debian-based)
|-|-|-|-
|postgres|postgresql-server, postgresql|postgresql|postgresql, postgresql-client
|python|python3|python3|python3
|git|git|git|git

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