#!/bin/sh

set -e

sh -c "curl --silent --show-error --fail -X POST -H \"Content-type: application/json\" --data '{\"title\": \"'$3'\", \"content\": \"'$4'\"}' \"https://hooks.twist.com/api/v3/integration_incoming/post_data?install_id=$1&install_token=$2\""
