#!/usr/bin/env bash
echo "========== setup.bash =========="
set -eux

# $(dirname "$0") で，実行中のシェルスクリプト名を取得する
source "$(dirname "$0")/common.bash"

/bin/bash "$DIR_CURR/setup-links.bash"
/bin/bash "$DIR_CURR/setup-homebrew.bash"
/bin/bash "$DIR_CURR/setup-zinit.bash"
/bin/bash "$DIR_CURR/setup-mac.bash"