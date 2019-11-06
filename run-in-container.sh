#!/bin/bash

docker run \
        -it \
        -p 31981:3000 \
        --name=generic-rails-app \
        -v $(pwd):/generic \
        -e RAILS_ENV=development \
        # there's probably a better way to do this, but for now this is my IP
        # on the network and the port that a Postgres 11 container is running
        # on my machine in Docker
        -e DATABASE_URL=postgres://postgres@192.168.30.234:32769/generic \
        -w /generic \
        g5search/ruby-base:2.6-v1.0.4 \
        bash
