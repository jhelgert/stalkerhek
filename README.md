# Stalkerhek

[![Build Status](https://travis-ci.com/erkexzcx/stalkerhek.svg?branch=master)](https://travis-ci.com/erkexzcx/stalkerhek) 
[![Go Report Card](https://goreportcard.com/badge/github.com/erkexzcx/stalkerhek)](https://goreportcard.com/report/github.com/erkexzcx/stalkerhek)

Stalkerhek is a proxy application that allows you to share the same Stalker portal account on (theoretically) unlimited amount of STB boxes and makes it possible to watch Stalker portal IPTV streams in simple video players, such as VLC. This application itself connects to Stalker portal, authenticates with it and keeps sending keep-alive requests to remain connected. The rest is being done by this application's [Services](https://github.com/erkexzcx/stalkerhek/wiki/Services#proxy-service).

See [Stalkerhek Documentation](https://github.com/erkexzcx/stalkerhek/wiki).


# How to run

``` bash
docker run \
    -p 9999:9999 \
    -e MODEL="MAG250" \
    -e MAC="00:1A:79:00:00:00" \
    -e URL="http://dummyurl.com:8000/server/load.php" \
    stalkerhek:latest
```