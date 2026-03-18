#!/bin/bash
# 修改內容請編輯 index.source.html，再執行此腳本重新產生 index.html（壓縮版）
set -e
cd "$(dirname "$0")"
npx --yes html-minifier-terser \
  --collapse-whitespace --remove-comments --minify-css --minify-js \
  -o index.html index.source.html
echo "已更新 index.html（約 $(wc -c < index.html | tr -d ' ') bytes）"
