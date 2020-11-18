#BigchainDB

echo "Running sudo pip3 install bigchaindb==2.2.1"
sudo pip3 install bigchaindb==2.2.1
echo "waiting 5 seconds.."
sleep 5

echo "Running bigchaindb configure"
bigchaindb configure
echo "waiting 5 seconds.."
sleep 5

#mongodb
echo "Running sudo apt install -y mongodb"
sudo apt install -y mongodb
echo "waiting 15 seconds.."
sleep 15

echo "Running systemctl status mongodb"
systemctl status mongodb
echo "waiting 5 seconds.."
sleep 5

#monit
echo "Running bigchaindb-monit-config"
bigchaindb-monit-config
echo "waiting 5 seconds.."
sleep 5

echo "Running bigchaindb-monit-config"
bigchaindb-monit-config
echo "waiting 5 seconds.."
sleep 5

#tendermint
echo "Running tendermint init"
tendermint init
echo "waiting 5 seconds.."
sleep 5
