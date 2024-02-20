#!/usr/bin/env bash

cd $SNAP_COMMON

PORT=$(snapctl get port)
HOST_NAME=$(snapctl get host)
exec uwsgi --http $HOST_NAME:$PORT $SNAP/uwsgi.ini
