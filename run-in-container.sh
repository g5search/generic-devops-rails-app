#!/bin/bash

docker run \
        -it \
        -p 31981:3000 \
        --name=generic-rails-app \
        -v $(pwd):/generic \
        -w /generic \
        g5search/ruby-base:2.6-v1.0.4 \
        bash
