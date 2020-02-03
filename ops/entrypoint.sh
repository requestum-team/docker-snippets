#!/bin/sh
set -e

### orchestration steps can go here
# expand docker secrets to envs
. ./ops/secrets_expand.sh

### exec CMD
exec "$@"
