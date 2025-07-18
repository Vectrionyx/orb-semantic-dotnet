FILE_PATH="$(circleci env subst "${ARTIFACTS_DIR}/release.json")"

if jq -e '.hasRelease' "$FILE_PATH" >/dev/null; then
    echo "Release triggered"
else
    echo "No release triggered"
    circleci-agent step halt
fi