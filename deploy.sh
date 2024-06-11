ls
pwd
ssh ubuntu@10.0.47.224 
sudo rm -rf /home/ubuntu/opt/tomcat/webapps/subtitledownloader-1.0-SNAPSHOT.jar <<EOF
  scp workspace/subtitle-downloader/target/subtitledownloader-1.0-SNAPSHOT.jar ubuntu@10.0.47.224:/home/ubuntu
  sudo mv /home/ubuntu/opt/tomcat/webapps/subtitledownloader-1.0-SNAPSHOT.jar /var/lib/jenkins/workspace/subtitle-downloader/target/subtitledownloader-1.0-SNAPSHOT.jar
  sudo systemctl restart tomcat
  exit
EOF
echo "completed successfully"
