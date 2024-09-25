# echo 'apt upgrade and apt update'
# sudo apt update
# sudo apt upgrade
echo 'Installing dependencies'
sudo apt install postgresql postgresql-client python3 git
sudo useradd -m phoneboy
echo 'phoneboy
phoneboy' | sudo passwd phoneboy
echo "CREATE ROLE phoneboy NOSUPERUSER NOCREATEDB NOCREATEROLE INHERIT LOGIN PASSWORD 'phoneboy';
CREATE DATABASE telephone;
GRANT ALL ON DATABASE telephone TO phoneboy;" | sudo -u postgres psql
echo 'GRANT ALL ON SCHEMA public TO phoneboy;' | sudo -u postgres psql telephone
sudo -u phoneboy sh ./setupproject.sh
sudo -u phoneboy python3 /home/phoneboy/telephonecat/main.py