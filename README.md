# Seaside-website
New Website for [http://www.seaside.st](http://www.seaside.st)

## Installation
First install [Pharo](http://www.pharo.org) on your machine. Pharo 7 onwards is recommended. Either using [PharoLauncher](https://github.com/pharo-project/pharo-launcher) or [Pharo ZeroConf](http://get.pharo.org/):

## Quick Start

Clone the project and run the provided script **download.sh** to fully load Pharo, Seaside and the install project.

## Manual Loading

### Load Pharo using ZeroConf 

If you want to load manually you can just run:

```
wget -O- get.pharo.org/64/70+vm | bash
./pharo-ui Pharo.image
```

### Load all in one

```Smalltalk
  Metacello new
      baseline:'SeasideWebsite';
      repository: 'github://astares/Seaside-website:master/src';
      load
```

### Run

Start the web server easily and browse the new page:
```Smalltalk
SSWWebserver 
  start; 
  browse
```
