# echo 'apt upgrade and apt update'
# sudo apt update
# sudo apt upgrade
echo 'Installing dependencies'
sudo apt install postgresql postgresql-client python3 git
sudo -u postgres 
sudo useradd phoneboy
echo 'phoneboy
phoneboy' | sudo passwd phoneboy
echo 'CREATE ROLE phoneboy NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN;
CREATE DATABASE telephone;
GRANT ALL ON DATABASE telephone TO phoneboy;' | sudo -u postgres psql
sudo -u postgres createdb telephone
echo '{
  "db": "telephone",
  "user": "phoneboy",
  "password": "phoneboy"
}' > .secrets.json