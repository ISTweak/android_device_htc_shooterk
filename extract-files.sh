#!/bin/sh

BASE=../../../vendor/htc/shooterk/proprietary
rm -rf $BASE/*

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/system/$DIR ]; then
    mkdir -p $BASE/system/$DIR
  fi
  adb pull /system/$FILE $BASE/system/$FILE
done

adb pull /system/lib/hw/camera.default.so $BASE/system/lib/hw/vendor-camera.msm8660.so

./setup-makefiles.sh
