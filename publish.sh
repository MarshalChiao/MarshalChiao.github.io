#!/bin/bash

git checkout master
git pull origin master
cd docs
gitbook build

cd ..
cp -rf docs/_book/* .

git add --all
git commit -m "$1"
git push origin master
