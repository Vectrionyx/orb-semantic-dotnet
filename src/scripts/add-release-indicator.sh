FILE_PATH="$(circleci env subst "${ARTIFACTS_DIR}")"

if [ "$(find "./$FILE_PATH" -type f -name '*.nupkg' | wc -l)" -eq 0 ]; then
    echo "{}" > "./$FILE_PATH/release.json"
    echo "No packages found - release.json written with empty object."
else
    echo '{"hasRelease": true}' > "./$FILE_PATH/release.json"
    echo "Packages found - release.json written with release indicator"
fi