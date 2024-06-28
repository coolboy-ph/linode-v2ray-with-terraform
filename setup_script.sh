#!/bin/bash
apt-get update -y
apt-get install curl -y
apt-get install jq -y

LATEST_RELEASE_URL=$(curl -s https://api.github.com/repos/NidukaAkalanka/x-ui-english/releases/latest | jq -r '.tag_name')
DOWNLOAD_URL="https://github.com/NidukaAkalanka/x-ui-english/releases/download/${LATEST_RELEASE_URL}/x-ui-linux-amd64.tar.gz"
wget $DOWNLOAD_URL -O x-ui-linux-amd64.tar.gz

tar zxvf x-ui-linux-amd64.tar.gz
chmod +x x-ui/x-ui x-ui/bin/xray-linux-* x-ui/x-ui.sh
cp x-ui/x-ui.sh /usr/bin/x-ui
cp -f x-ui/x-ui.service /etc/systemd/system/
mv x-ui/ /usr/local/

export config_account="Web UI login username"
export config_password="Web UI login password"
export config_port="Port"

/usr/local/x-ui/x-ui setting -username ${config_account} -password ${config_password}
/usr/local/x-ui/x-ui setting -port ${config_port}

systemctl daemon-reload
systemctl enable x-ui
systemctl restart x-ui
