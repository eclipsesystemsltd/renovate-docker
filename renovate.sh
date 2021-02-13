#!/usr/bin/env bash

export PATH="/usr/local/lib/node_modules:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:$PATH"
export RENOVATE_CONFIG_FILE="/etc/config/config.json"
# export RENOVATE_TOKEN="some-token"    # GitHub, GitLab, Azure DevOps
# export GITHUB_COM_TOKEN="github-token"        # Delete this if using github.com

renovate
