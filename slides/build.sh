#!/usr/bin/env bash

npx @marp-team/marp-cli@latest slides.md --browser-path `which google-chrome-stable`  --allow-local-files
npx @marp-team/marp-cli@latest slides.md --browser-path `which google-chrome-stable`  --allow-local-files --pdf
