ls
pwd
scp target/*.jar ubuntu@10.0.47.224:/home/ubuntu
ssh ubuntu@10.0.47.224 
<<EOF
  sudo rm -rf /opt/tomcat/webapps/*.jar
  sudo mv /home/ubuntu/*.jar /opt/tomcat/webapps/
  sudo systemctl restart tomcat
  exit
EOF
echo "completed successfully"
