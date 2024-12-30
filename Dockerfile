# on ARM, use --platform linux/amd64
FROM ghcr.io/ba-st/pharo:v11.0.0
LABEL org.opencontainers.image.source https://github.com/SeasideSt/Seaside-website
RUN ./pharo metacello install github://SeasideSt/Seaside-website:master BaselineOfSeasideWebsite
RUN ./pharo eval --save "WAAdmin defaultServerManager stopAll"
EXPOSE 8080/tcp
CMD pharo eval --no-quit "WASWWebserver start"