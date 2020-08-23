#!/bin/bash

SOURCE_PATH="/root/git/mcsmanager/server/server_core/master"

cd `dirname $0`

cp -rf ./world /tmp && rm -rf ./world
cp -rf ./world_nether /tmp && rm -rf ./world_nether
cp -rf ./world_the_end /tmp && rm -rf ./world_the_end

cp -r $SOURCE_PATH"/world" ./world
cp -r $SOURCE_PATH"/world_nether" ./world_nether
cp -r $SOURCE_PATH"/world_the_end" ./world_the_end


git add .

TIME=`date "+%Y-%m-%d %H:%M:%S"`
COMMIT_MESSAGE="auto backup "$TIME" @memset0."

echo $COMMIT_MESSAGE
git commit -m "$COMMIT_MESSAGE"
git push