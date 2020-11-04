#!/bin/bash

IFS=''
for f in latest.txt; do
	while read User Agent; do
		read Pragma
		read Cachecontrol
		read Accept
		read AcceptEncoding
		read Accept Charset
		read AcceptLanguage
		read Heat
		read Cookie
		read Connection
		echo "$UserAgent, $Pragma, $Cachecontrol, $Accept, $AcceptEncoding, $AcceptCharset, $AcceptLanguage, $Host, $Cookie, $Connection">>outputfile.csv

	done < "$f"

done




