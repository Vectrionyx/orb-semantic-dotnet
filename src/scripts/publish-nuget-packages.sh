# shellcheck shell=bash
ARTIFACTS_DIR=$(circleci env subst "${ARTIFACTS_DIR}")
NUGET_API_KEY=$(circleci env subst "${NUGET_API_KEY}")

dotnet nuget push "$ARTIFACTS_DIR/*.nupkg" \
  --source "https://api.nuget.org/v3/index.json" \
  --api-key "$NUGET_API_KEY" \
  --skip-duplicate
