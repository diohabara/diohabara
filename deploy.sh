#!/usr/bin/env bash
tectonic -X build
git add .
git commit -m "feat(resume): update"
cp -f ./build/resume/resume.pdf ~/Downloads/resume"$(date +%Y%m%d).pdf"
cp -f ./build/resume/resume.pdf ~/Dropbox/resume"$(date +%Y%m%d).pdf"
git push
