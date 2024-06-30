#!/bin/zsh
for i in $(find . | grep 'fnl/.*\.fnl'); do;
	newname=$(printf '%s' $i | sed 's/fnl/lua/g')
	mkdir -p $(dirname $newname)  && \
	fennel --compile $i > $newname ||\
	(echo "OH NO!!!!!"; exit)
done
