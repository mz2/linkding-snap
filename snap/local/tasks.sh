#!/bin/bash
set -e

cd $SNAP_COMMON

echo "Cleaning before processing"
python3 $SNAP/manage.py clean_tasks
echo "Processing tasks"
python3 $SNAP/manage.py process_tasks

