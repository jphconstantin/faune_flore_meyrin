#!/bin/sh
#deploy the content of _site folder to Github pages
cd _site
git init
git config user.name "Travis CI"
git config user.email "travis@travis-ci.org"
git add --all
git commit --message  "Auto deploy from Travis CI build $TRAVIS_BUILD_NUMBER"
git remote add deploy https://$GH_TOKEN@github.com/jphconstantin/jphconstantin.github.io.git >/dev/null 2>&1
git push --force deploy gh-pages >/dev/null 2>&1
