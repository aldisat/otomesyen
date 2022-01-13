#!/bin/bash

while read url ; do dig +short $url ; done < "$1" 
