echo 'Cloning repository to phoneboys home directory'
cd
git clone https://github.com/averieyy/telephonecat.git
cd telephonecat
echo '{
  "db": "telephone",
  "user": "phoneboy",
  "password": "phoneboy"
}' > .secrets.json
cat db.sql | psql telephone
echo 'project set up in /home/phoneboy/telephonecat'