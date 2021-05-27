sudo apt-get update && sudo apt-get upgrade -y
sudo apt install -y openjdk-11-jdk

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins

sudo apt-get autoremove && sudo apt-get clean

java -version
sudo apt list --installed | grep jenkins
