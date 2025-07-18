# shellcheck shell=bash
FILE_PATH="$(circleci env subst "${ARTIFACTS_DIR}")"

ls "$FILE_PATH"