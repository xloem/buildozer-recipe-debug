# buildozer/python-for-android recipe failure case template

This is to ease debugging of buildozer/python-for-android issues and somewhat for recipe development.  Edit `main.py` and `buildozer.spec` to test your recipe or failure case, and type `make` to build.

This repository has a github action to automatically merge pull requests, although it has not been tested.  Feel free to use this repository as a workbench to work on some issue.

After building, a recipe tree appears to be in `.buildozer/android/platform/*/build/other_builds/{recipename}/*/{recipename}`.

Edit the makefile to change the packages wiped, and then run `make` to rebuild.
