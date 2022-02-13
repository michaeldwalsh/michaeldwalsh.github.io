#!/usr/bash/env sh

set -e

yarn build

cd dist 

git init
git add -A 
git commit -m 'deploy'

git push -f git@github.com:michaeldwalsh/michaeldwalsh.github.io.git production

cd -