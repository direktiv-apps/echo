#!/bin/sh

docker build -t echo . && docker run -p 9191:8080 echo