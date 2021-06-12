FROM alpine

#set the work dir
WORKDIR /opt/minecraft_server

#add edge testing branch
RUN echo "https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

#install dependencies
RUN apk update
RUN apk add openjdk16 wget git

#get the server executable
RUN wget -O BuildTools.jar "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar"


#install the server
RUN java -jar BuildTools.jar --rev 1.17
RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java","-Xmx2G", "-Xms2G" ,"-jar", "spigot-1.17.jar", "nogui"]




