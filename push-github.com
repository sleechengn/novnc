#!/usr/bin/bash

git add .
git commit -m "upd"
git push
