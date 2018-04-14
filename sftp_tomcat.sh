mv target/myweb*.war target/myweb.war

sftp ec2-user@13.126.215.242 <<EOF
rename /tomcat8/webapps/myweb.war /tmp/myweb.war.back
rm /tomcat8/webapps/myweb*
put target/myweb.war  /opt/tomcat8/webapps/
bye
EOF
