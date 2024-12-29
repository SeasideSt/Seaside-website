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

TODO