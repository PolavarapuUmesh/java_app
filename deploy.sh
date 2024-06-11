ls
pwd
ssh ubuntu@10.0.47.224 
  scp workspace/subtitle-downloader/target/*.jar ubuntu@10.0.47.224:/home/ubuntu <<EOF
  sudo rm -rf /home/ubuntu/opt/tomcat/webapps/*.jar
  sudo mv /home/ubuntu/opt/tomcat/webapps/*.jar /var/lib/jenkins/workspace/subtitle-downloader/target/*.jar
  sudo systemctl restart tomcat
  exit
EOF
echo "completed successfully"
