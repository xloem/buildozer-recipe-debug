buildrun:
	rm -rf .buildozer/android/platform/*/build/python-installs/*/audiostream
	rm -rf .buildozer/android/platform/*/dists
	set -o pipefail; buildozer android debug deploy run 2>&1 | tee buildrun.log
	set -o pipefail; stdbuf -o0 adb logcat | stdbuf -o0 -i0 grep '\(python\|zygote\)' | tee -a buildrun.log
