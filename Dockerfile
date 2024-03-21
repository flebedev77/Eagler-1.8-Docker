FROM openjdk

WORKDIR /eagler

COPY . .

EXPOSE 25565
EXPOSE 8081

RUN sudo java -jar server/server.jar

CMD ["cd", "bungee && sudo java -jar bungee.jar"]