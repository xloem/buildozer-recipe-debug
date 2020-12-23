# buildozer/python-for-android recipe failure case template

This is to ease debugging of buildozer/python-for-android issues and somewhat for recipe development.

This repository has a github action to automatically merge pull requests, although it has not been tested.

After building, a recipe tree appears to be in `.buildozer/android/platform/*/build/other_builds/{recipename}/*/{recipename}`.

Edit the makefile to change the packages wiped, and then run `make` to rebuild.
