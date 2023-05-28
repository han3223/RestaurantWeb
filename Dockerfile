FROM gradle:7-jdk11 AS build
COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle installDist --no-daemon --info

FROM openjdk:11
EXPOSE 8080:8080
RUN mkdir /app
<<<<<<< HEAD
COPY --from=build /home/gradle/src/build/install/RestaurantWeb/ /app
=======
COPY --from=build /home/gradle/src/build/install/RestaurantWeb /app
>>>>>>> origin/master
ENTRYPOINT ["/app/bin/RestaurantWeb"]