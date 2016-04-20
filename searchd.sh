#!/bin/bash

/usr/bin/searchd -c /etc/sphinx/sphinx.conf --nodetach "$@"

