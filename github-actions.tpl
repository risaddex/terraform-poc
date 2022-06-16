#!/bin/bash

docker run -d --restart always --name github-runner \
  -e ACCESS_TOKEN="${gh_access_token}" \
  -e RUNNER_NAME_PREFIX="myrunner" \
  -e RUNNER_WORKDIR="/tmp/github-runner" \
  -e RUNNER_SCOPE="org" \
  -e ORG_NAME="evo-repos" \
  -e LABELS="github-runner,ci,github-actions" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /tmp/github-runner:/tmp/github-runner \
  myoung34/github-runner:latest
