echo "starting apt install wget openssl-tool proot -y "
apt install wget openssl-tool proot -y 
echo "starting hash -r"
hash -r
echo "starting wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh"
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh
echo "starting bash ubuntu.sh"
bash ubuntu.sh 
echo "starting ./start-ubuntu.sh"
./start-ubuntu.sh
echo "starting https://github.com/coder/code-server/releases/download/v4.3.0/code-server_4.3.0_arm64.deb"
wget https://github.com/coder/code-server/releases/download/v4.3.0/code-server_4.3.0_arm64.deb
echo "starting apt install ./code-server_4.3.0_amd64.deb"
apt install ./code-server_4.3.0_amd64.deb
echo "starting export PASSWORD="1234567890" "
export PASSWORD="1234567890"   
echo "starting install updates"
apt update -y
apt install python -y
apt install g++ -y
echo "starting code server"
code-server
