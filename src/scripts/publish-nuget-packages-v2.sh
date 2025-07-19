# shellcheck shell=bash

ARTIFACTS=$(circleci env subst "${ARTIFACTS_DIR}")
NUGET_API_KEY=$(circleci env subst "${NUGET_API_KEY}")

mono nuget.exe push "${ARTIFACTS}"/*.nupkg \
  -Source "https://api.nuget.org/v3/index.json" \
  -ApiKey "${NUGET_API_KEY}" \
  -SkipDuplicate -NonInteractive
