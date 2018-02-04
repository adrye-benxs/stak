sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev screen git  nano
git clone https://github.com/adrye-benxs/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake .
make install
cd bin/
chmod +x xmr-stak-cpu
nohup ./xmr-stak-cpu
sudo sysctl -w vm.nr_hugepages=128
chmod +x xmr-stak-cpu
echo -e "vm.nr_hugepages=128" >> /etc/sysctl.conf
echo -e "screen -d -r" >> /root/.bashrc
screen
