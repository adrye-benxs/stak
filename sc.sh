sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install screen
sudo apt-get install cpulimit
sudo apt-get -y install git build-essential cmake libuv1-dev libmicrohttpd-dev
git clone https://github.com/adrye-benxs/xmrig.git
cd xmrig
mkdir build
cd build
cmake ..
make
sudo -y add-apt-repository ppa:jonathonf/gcc-7.1
sudo apt-get update
sudo apt-get -y install gcc-7 g++-7
cmake .. -DCMAKE_C_COMPILER=gcc-7 -DCMAKE_CXX_COMPILER=g++-7
chmod +x xmrig
sudo sysctl -w vm.nr_hugepages=128
chmod +x xmrig
echo -e "vm.nr_hugepages=128" >> /etc/sysctl.conf
screen
