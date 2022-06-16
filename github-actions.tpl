#!/bin/bash
# Configurar github actions
# Create the folder
mkdir actions-runner && cd actions-runner
# Download the latest runner package
curl -o actions-runner-linux-x64-2.293.0.tar.gz \
  -L https://github.com/actions/runner/releases/download/v2.293.0/actions-runner-linux-x64-2.293.0.tar.gz
# Optional: validate the hash
echo "06d62d551b686239a47d73e99a557d87e0e4fa62bdddcf1d74d4e6b2521f8c10  actions-runner-linux-x64-2.293.0.tar.gz" | shasum -a 256 -c
# Extract the installer
tar xzf ./actions-runner-linux-x64-2.293.0.tar.gz
# Create the runner and start the configuration experience
./config.sh \
  --unattended \
  --url https://github.com/evo-repos/evo-services \
  --token ${github_workflows_token} \
  --name evo-services-runner_AWS \
  --pat ${github_pat}
# run
./run.sh
