# audiostream failure case

This is to ease debugging of issue #25 in audiostream.  Type `make` to reproduce.

This repository has a github action to automatically merge pull requests, although it has not been tested.

After building, the audiostream tree appears to be in `.buildozer/android/platform/*/build/other_builds/audiostream/*/audiostream`.

If the bug is in audiostream, it may be possible simply to test changes in that subfolder.
