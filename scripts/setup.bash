#!/usr/bin/env bash
echo "Hello from setup.bash"
set -eux

# $(dirname "$0") で，実行中のシェルスクリプト名を取得する
source "$(dirname "$0")/common.bash"

/bin/bash "$CURR_DIR/setup-zinit.bash"
# /bin/bash "$CURR_DIR/setup-homebrew.bash"
# /bin/bash "$CURR_DIR/setup-mac.bash"