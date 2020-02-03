sudo apt-get update
sudo apt-get install -y ansible git python-pip python-dev build-essential libyaml-dev libpython-dev python-yaml
sudo useradd ansadmin
sudo echo "ansadmin ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
cat /vagrant/script.sh
# sudo -u ansadmin bash -c "pip install psycopg2"
# passwd ansadmin
# ssh-keygen
# ssh-copy-id ansadmin@localhost
