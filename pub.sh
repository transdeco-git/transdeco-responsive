#!/usr/bin/env sh

cd ~/GIT/transdeco-git.github.io
git checkout main
git add -A
git commit -am "Update"
git push https://github.com/transdeco-git/transdeco-git.github.io.git main
rm -rf ./_site
git clone -b gh-pages https://github.com/transdeco-git/transdeco-git.github.io.git _site
bundle exec jekyll build
cd _site
git add -A
git commit -am "Update"
git push https://github.com/transdeco-git/transdeco-git.github.io.git gh-pages
cd ..
