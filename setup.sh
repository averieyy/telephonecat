echo 'apt upgrade and apt update'
sudo apt update
sudo apt upgrade
echo 'Installing dependencies'
sudo apt install postgresql python3 git python3-psycopg2
sudo useradd -m phoneboy
echo 'phoneboy
phoneboy' | sudo passwd phoneboy
echo "CREATE ROLE phoneboy NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN PASSWORD 'phoneboy';
CREATE DATABASE telephone;
GRANT ALL ON DATABASE telephone TO phoneboy;" | sudo -u postgres psql
echo 'GRANT ALL ON SCHEMA public TO phoneboy;' | sudo -u postgres psql telephone
sudo -u phoneboy sh ./setupproject.sh
sudo su phoneboy
cd ~/telephonecat/
python3 main.py