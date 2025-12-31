# Seaside-website
New Website for [http://www.seaside.st](http://www.seaside.st)

## Getting Started
First install [Pharo](http://www.pharo.org) on your machine. Pharo 11 onwards is recommended. Either using [PharoLauncher](https://github.com/pharo-project/pharo-launcher) or [Pharo ZeroConf](http://get.pharo.org/):

Then load the code using Metacello by executing the following code in a playground:

```Smalltalk
  Metacello new
      baseline: 'SeasideWebsite';
      repository: 'github://SeasideSt/Seaside-website:master/src';
      load
```

Start the web server easily and browse the new page:
```Smalltalk
SSWWebserver 
  start; 
  browse
```

## Using Docker

** Work in progress **

The root folder of this project contains a draft Docker configuration to deploy the website.

We use the Pharo docker images provided by [https://github.com/ba-st/docker-pharo-runtime].
Run the following in a shell terminal:
```
cd docker
docker build . -t seaside-website  --platform linux/amd64
docker compose up
```

