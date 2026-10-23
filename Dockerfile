FROM debian
RUN apt update
RUN apt install wget -y
RUN apt install coreutils -y
#RUN apt install chmod
COPY jen.sh /home/jen.sh
RUN chmod +x /home/jen.sh
RUN home/jen.sh
EXPOSE 8080
#CMD["jenkinctl","-D","FOREGROUND"]
CMD ["java", "-jar", "/usr/share/java/jenkins.war", "--httpPort=8080"]
