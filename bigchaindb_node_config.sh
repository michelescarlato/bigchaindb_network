#BigchaindB node: these are the packages required for the installation of Bigchaindb

echo "Running sudo apt update"
sudo apt update
echo "waiting 5 seconds.."
sleep 5


echo "Running sudo apt upgrade"
sudo apt upgrade
echo "waiting 5 seconds.."
sleep5


echo "Running sudo apt install python3-pip"
sudo apt install python3-pip
echo "waiting 5 seconds.."
sleep 5


echo "Running sudo pip3 install bigchaindb==2.2.1"
sudo pip3 install bigchaindb==2.2.1
echo "waiting 5 seconds.."
sleep 5


echo "Running bigchaindb configure"
bigchaindb configure
echo "waiting 5 seconds.."
sleep 5


#echo "Running sudo apt install mongodb"
#sudo apt install mongodb
#echo "waiting 15 seconds.."
#sleep 15

#echo "Running systemctl status mongodb"
#systemctl status mongodb
#echo "waiting 5 seconds.."
#sleep 5


echo "Running wget https://github.com/tendermint/tendermint/releases/download/v0.31.5/tendermint_v0.31.5_linux_amd64.zip"
wget https://github.com/tendermint/tendermint/releases/download/v0.31.5/tendermint_v0.31.5_linux_amd64.zip
echo "waiting 5 seconds.."
sleep 5


echo "Running unzip tendermint_v0.31.5_linux_amd64.zip"
unzip tendermint_v0.31.5_linux_amd64.zip
echo "waiting 5 seconds.."
sleep 5


echo "Running rm tendermint_v0.31.5_linux_amd64.zip"
rm tendermint_v0.31.5_linux_amd64.zip
echo "waiting 5 seconds.."
sleep 5

echo "Running sudo mv tendermint /usr/local/bin"
sudo mv tendermint /usr/local/bin
echo "waiting 5 seconds.."
sleep 5

echo "Running sudo apt install monit"
sudo apt install monit
echo "waiting 5 seconds.."
sleep 5

echo "Running bigchaindb-monit-config"
bigchaindb-monit-config
echo "waiting 5 seconds.."
sleep 5

# for the data insertion check the history of "clone clone", probably there is a git clone command
