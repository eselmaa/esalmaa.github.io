#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
echo 'www.eselma.tech' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push -f git@github.com:eselmaa/eselmaa.github.io.git master:gh-pages

# if you are deploying to https://<USERNAME>.github.io/<REPO>
#git push -f git@github.com:EttouibiaSalma/My_Portfolio.git master:gh-pages

cd -
