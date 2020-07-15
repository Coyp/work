SERVICE='elasticsearch.service'

# set auto restart when es service broken
CONFIG_DIR="/etc/systemd/system/${SERVICE}.d"
if [ -d $CONFIG_DIR ]; then
  sudo rm -r $CONFIG_DIR
fi
sudo mkdir $CONFIG_DIR
echo -e "[Service]\nRestart=always" | sudo tee ${CONFIG_DIR}/override.conf

# enable service in systemd
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable ${SERVICE}

# start
sudo systemctl start ${SERVICE}
