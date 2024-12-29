# Commented this and built the pharo-runtime image myself using the same source Dockerfile but adapted for aarch64
FROM ghcr.io/ba-st/pharo:v11.0.0
# FROM jbrichau/pharo-runtime
RUN ./pharo metacello install github://SeasideSt/Seaside-website:master BaselineOfSeasideWebsite
RUN ./pharo eval --save "WAAdmin defaultServerManager stopAll"
EXPOSE 8080/tcp
CMD pharo eval --no-quit "SSWWebserver start"