Como generar clave ssh
=====================

```shell
$ cd ~/.ssh
$ ssh-kygen -t rsa -C "riki319@gmail.com"
$ sudo apt-get install xclip
$ xclip -sel clip < ~/.ssh/id_rsa.pub
´´´
