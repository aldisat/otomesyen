#!/bin/bash

(while read url ; do gau $url &&  waybackurls $url ; done < "$1" ) | sort -u | tee crawl-an | httpx -title -content-length -status-code -silent -content-type -no-color | awk '{ t = $1; $1 = $2; $2 = t; print; }' | awk '{ t = $3; $3 = $2; $2 = t; print; }' | sort -u > httpx-an
