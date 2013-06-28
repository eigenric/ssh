cd ~/.ssh
ssh-keygen -t rsa -C "riki319@gmail.com"
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
