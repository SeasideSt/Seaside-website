# Seaside-website
New Website for [http://www.seaside.st](http://www.seaside.st)

## Installation
First install [Pharo](http://www.pharo.org) on your machine. Pharo 7 onwards is recommended. Either using [PharoLauncher](https://github.com/pharo-project/pharo-launcher) or [Pharo ZeroConf](http://get.pharo.org/):

## Load Pharo using ZeroConf 

```
wget -O- get.pharo.org/64/70+vm | bash
./pharo-ui Pharo.image
```

you can use the provided script **download.sh** to fully load.

## Load all in one

```Smalltalk
  Metacello new
      baseline:'SeasideWebsite';
      repository: 'github://astares/Seaside-website:master/src';
      load
```

## Run

Start the web server easily and browse the new page:
```Smalltalk
SSWWebserver 
  start; 
  browse
```
