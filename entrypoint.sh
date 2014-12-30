#!/bin/bash

rm -rf /var/www/app/cache/*
app/console server:run --env=prod --no-debug 0.0.0.0:8080
