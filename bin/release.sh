#!/bin/bash

CURRENT_GIT_TAG=`git tag | tail -n 1`
IFS='.' read -r -a array <<< "$CURRENT_GIT_TAG"
let "newVersionLastPart=${array[2]}+1";
newVersiontag="${array[0]}.${array[1]}.$newVersionLastPart";

printf "New Version Tag: $newVersiontag\n";
git tag $newVersiontag;
git push;
git push --tags;
printf "Done.\n";
