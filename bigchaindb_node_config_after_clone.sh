echo "Running sudo apt install mongodb"
sudo apt install mongodb
echo "waiting 15 seconds.."
sleep 15

echo "Running systemctl status mongodb"
systemctl status mongodb
echo "waiting 5 seconds.."
sleep 5

echo "Running bigchaindb-monit-config"
bigchaindb-monit-config
echo "waiting 5 seconds.."
sleep 5

echo "Running tendermint init"
tendermint init
echo "waiting 5 seconds.."
sleep 5
