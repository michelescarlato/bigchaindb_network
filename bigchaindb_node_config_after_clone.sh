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

# MONIT
echo "Running sudo apt install -y monit"
sudo apt install -y monit
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

echo "Tendermint node id"
tendermint show_node_id
echo "waiting 5 seconds.."
sleep 5

# Retrieve public IP Address
echo "Public IP Address"
ip route get 1 | awk '{print $(NF-2);exit}'

#moniker name
echo "Moniker name"
hostname

# Peersistent node id
echo "Peersistent node id"
echo $(tendermint show_node_id)"@"$(ip route get 1 | awk '{print $(NF-2);exit}')":26656,"
