#!/usr/bin/env bash
echo "========== common.bash =========="
set -x

export DIR_CURR DIR_REPO
DIR_CURR="$(cd "$(dirname "$0")" || exit 1; pwd)"
DIR_REPO="$(cd "$(dirname "$0")/.." || exit 1; pwd)"

export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"