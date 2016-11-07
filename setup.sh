#!/usr/bin/env bash

# Shell script to check dependencies before install the project
git --version >/dev/null 2>&1 || { echo "I require git but it's not installed.  Aborting." >&2; exit 1; }

node --version >/dev/null 2>&1 || { echo "I require node.js but it's not installed.  Aborting." >&2; exit 1; }
npm list --depth 1 --global devlab > /dev/null 2>&1 || { echo "I require node:devlab globally installed but it's not installed.  Aborting." >&2; exit 1; }

docker --version >/dev/null 2>&1 || { echo "I require docker but it's not installed.  Aborting." >&2; exit 1; }

docker pull mhart/alpine-node:6.2
docker pull airdock/fake-sns:latest
docker pull airdock/fake-sqs:latest
