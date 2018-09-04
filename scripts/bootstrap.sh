#!/bin/sh
# vim: set ts=4:
#
# Ensures that Python is available and installs modules specified
# in requirements-dev.txt.
#
# Environment variables:
#   PYTHON : Python executable to use
#
# This script follows convention https://github.com/github/scripts-to-rule-them-all.
# Origin:
# https://gist.githubusercontent.com/jirutka/c5200ddcf00a86603314988fcad9532f/raw/68029eaa1de2d03cb24917061869b4b4057b497a/bootstrap

set -eu

cd "$(dirname "$0")/.."
. scripts/utils.sh

readonly ENV_DIR="$(pwd)/.venv"
readonly PYTHON="python"

if [ ! -f "$ENV_DIR/bin/python3" ]; then
	info 'Initializing Python virtual environment...'

	# Find Python executable.
	for pybin in "${PYTHON:-}" python3 python NOT_FOUND; do
		command -v "$pybin" 2>&1 >/dev/null && break
	done
	if [ "$pybin" = 'NOT_FOUND' ]; then
		die 'Could not find python executable! Please install Python 3.5.'
	fi

	virtualenv "$ENV_DIR"
	# "$pybin" -m venv "$ENV_DIR"

	# For the case when PATH is already set, but venv was empty.
	hash -r 2>&1 >/dev/null
fi

if ! is_on_path "$ENV_DIR/bin"; then
	warn '! You should add ".venv/bin" to your PATH. Source .envrc" into your !'
	warn '! shell, or install direnv or similar tool that will do it for you. !'
  set +ue
	. "${ENV_DIR}/bin/activate"
fi


info 'Installing Python modules...'
python -m pip install --disable-pip-version-check -r requirements-dev.txt 2>&1 \
	| sed	-e '/^Requirement already satisfied/d' \
			-e '/don.t match your environment$/d'
