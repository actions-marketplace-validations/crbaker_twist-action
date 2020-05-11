#!/bin/sh

set -e

sh -c "curl --silent --show-error --fail -X POST -H \"Content-type: application/json\" --data '{\"title\": \"'$TWIST_HOOK_TITLE'\", \"content\": \"'$TWIST_HOOK_CONTENT'\"}' \"https://hooks.twist.com/api/v3/integration_incoming/post_data?install_id=$TWIST_HOOK_INSTALL_ID&install_token=$TWIST_HOOK_INSTALL_TOKEN\""
