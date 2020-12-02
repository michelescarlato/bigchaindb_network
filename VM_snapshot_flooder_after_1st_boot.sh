# after booting
cd
pwd
npm install bigchaindb-driver@4.1.0
git clone https://github.com/michelescarlato/blockchainETIS.git
cd blockchainETIS/tests/
chmod +x TPS_bash_script.sh
./TPS_bash_script.sh
