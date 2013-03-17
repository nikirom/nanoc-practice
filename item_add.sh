#!/bin/sh

echo -n "title "
read title

echo -n "tags "
read tags

now_time=`date +"%Y/%m/%d %H:%M:%S"`

echo "---" > $1
echo "title: $title" >> $1
echo "filters_pre: " >> $1
echo '  - "redcloth"' >> $1
echo "tags: $tags" >> $1
echo "created_at: $now_time" >> $1
echo "kind: article" >> $1
echo "publish: true" >> $1
echo "---" >> $1
