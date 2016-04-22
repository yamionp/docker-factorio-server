#!/bin/sh

set -e

auto_start() {
  if [ -f /factorio/saves/save.zip ]; then
    echo "Using existing save file..."
  else
    echo "Creating new map..."
    create_map
  fi

  start_server
}

create_map() {
  bin/x64/factorio --create save
}

start_server() {
  echo "Starting..."
  bin/x64/factorio --start-server save
}

if [ $# -ne 0 ]; then
  bin/x64/factorio $@
else
  auto_start
fi
