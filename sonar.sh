#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
sudo dnf install java-11-amazon-corretto -y     #(use this )
amazon-linux-extras install java-openjdk11 -y     #(skip this is   if above works)
useradd sonar
chown sonar:sonar sonarqube-8.9.6.50800 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar

#run this on server manually
#sh /opt/sonarqube-8.9.6.50800/bin/linux/sonar.sh start
#echo "user=admin & password=admin"
