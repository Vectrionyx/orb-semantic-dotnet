# shellcheck shell=bash
curl -Ls https://dist.nuget.org/win-x86-commandline/latest/nuget.exe -o nuget.exe
chmod +x nuget.exe  # Optional—some runners treat .exe files as regular executables
