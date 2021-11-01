#!/bin/sh

sudo apt -y update
sudo apt -y install openbox lxqt xrdp


cat << EOF > ~/.xsession
openbox-session &
startlxqt &
EOF


cat << EOF | sudo tee /usr/local/bin/rdpserver
#!/bin/sh
sudo xrdp-sesman
sudo xrdp
ip a
EOF
sudo chmod a+x /usr/local/bin/rdpserver

echo
echo #########################
echo '"rdpserver" is available'
