#!/bin/bash

echo "=================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/build_portfolio.py

git add -A && git commit -m "Updated portfolio"

git push --set-upstream origin "${INPUT_BRANCH}"

echo "=================="