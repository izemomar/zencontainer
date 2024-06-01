#!/usr/bin/env bash

[ -z "$WWWUSER" ] && export WWWUSER=$(id -u)
[ -z "$WWWGROUP" ] && export WWWGROUP=$(id -g)
