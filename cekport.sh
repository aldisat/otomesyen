#!/bin/bash

sudo ~/masscan/bin/masscan -p1-65535,U:1-65535 $(dig +short $1) --rate=1000 -e en0
