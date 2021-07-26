echo "ustanovka apache2"
sudo apt-get update&&sudo apt-get install -y apache2&&echo
echo "dobavlenie repositoriev dlya postgresql 8.4"
echo deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main >> /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -yq install postgresql-8.4
sudo systemctl restart postgresql.service
