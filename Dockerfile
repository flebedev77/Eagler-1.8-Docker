FROM openjdk

WORKDIR /eagler

COPY . .

EXPOSE 25565
EXPOSE 8081

RUN java -jar server/server.jar

CMD ["cd", "bungee && java -jar bungee.jar"]