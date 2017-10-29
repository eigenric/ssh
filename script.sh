#!/bin/sh
# Ricardo Ruiz <ricardoruizfdez@gmail.com>

echo "Pequeño script para configurar ssh con Github"
echo -n "¿Quiere instalar el programa xclip para facilitar el proceso? (s/n): "
read xclip

if [ $xclip = 's' ]; then
    sudo apt-get install xclip;
    if [ $? == '0' ]
fi

if [ ! -e ~/.ssh ]; then
    echo "No existe la carpeta ~/.ssh"
    echo "Creando carpeta ~/.ssh ..."
    mkdir ~/.ssh
fi

cd ~/.ssh

echo -n "Introduzca el email con el que se registró a Github: "
read email

ssh-keygen -t rsa -C $email
if [ $xclip = 's' ]; then
    xclip -sel clip < ~/.ssh/id_rsa.pub
    echo "Clave copiada al portapapeles"
    echo "Puede añadirla a github"
else
    echo "Copia la siguiente clave y añádela a Github";
    cat ~/.ssh/id_rsa.pub;
    echo "Luego, pulse enter"
    read t
fi

xdg-open https://github.com/settings/ssh
ssh-add
echo "Conectado correctamente :)"
