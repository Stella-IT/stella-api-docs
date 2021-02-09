#!/bin/bash

npm i -g gitbook-cli
git checkout gh-pages

gitbook build

cp -R _book/* .
git clean -fx node_modules
git clean -fx _book

git add .

git commit -a -m "chore: Update docs" --author=Stella\ IT\ Bot\ \<bot@stella-it.com\>
git push origin gh-pages

git checkout master
