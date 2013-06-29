rm -d -r  ~/.ssh
mkdir ~/.ssh 
cd ~/.ssh
ssh-keygen -t rsa -C "riki319@gmail.com"
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
google-chrome https://github.com/settings/ssh
echo "Crea una nueva clave y pegala"
ssh-add
clear
echo "Conectado correctamente con github :)"
