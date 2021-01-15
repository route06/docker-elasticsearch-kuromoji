#!/bin/sh
docker build -t ghcr.io/route06/elasticsearch-kuromoji:7.9.0 .
docker push ghcr.io/route06/elasticsearch-kuromoji:7.9.0
