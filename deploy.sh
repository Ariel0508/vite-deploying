#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 构建
npm run build

# cd 到构建输出的目录下
cd dist

# 部署到自定义域域名
# echo 'www.example.com' > CNAME

git init
git checkout -B main
git add -A
git commit -m 'deploy'

# main
# 部署到 https://Ariel0508.github.io
# git push -f git@github.com:Ariel0508/Ariel0508.github.io.git main

# gh-pages
# 部署到 https://Ariel0508.github.io/vite-vue
git push -f git@github.com:Ariel0508/vite-vue.git main:gh-pages

cd -