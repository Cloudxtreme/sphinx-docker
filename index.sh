#!/bin/bash

/usr/bin/indexer --config /etc/sphinx/sphinx.conf --all

./searchd.sh

