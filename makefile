PKGS=bleak
rebuildrun: halfclean buildrun
buildrun:
	set -o pipefail; NO_COLOR=1 buildozer android debug deploy run 2>&1 | tee buildrun.log
	stdbuf -o0 adb logcat -T 1 | stdbuf -o0 -i0 grep '\(python\|zygote\|DEBUG\|libc\)' | tee -a buildrun.log
wipep4a:
	-rm -rf .buildozer/android/platform/python-for-android
halfclean:
	-cd .buildozer/android/platform/python-for-android && git pull
	-for pkg in $(PKGS); do \
		rm -rf .buildozer/android/platform/*/build/python-installs/*/"$$pkg"; \
		rm -rf .buildozer/android/platform/*/build/other_builds/"$$pkg"; \
	done
	-rm -rf .buildozer/android/platform/*/dists
