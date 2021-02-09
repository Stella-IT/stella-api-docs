#!/bin/bash

npm i -g gitbook-cli
git checkout gh-pages

gitbook build

cp -R _book/* .
git clean -fx node_modules
git clean -fx _book

git add .

git config user.name "Stella IT Bot"
git config user.email "bot@stella-it.com"
git commit -a -m "chore: Update docs"
git push origin gh-pages

git checkout master
