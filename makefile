PKGS=zbar zbarlight
rebuildrun: halfclean buildrun
buildrun:
	set -o pipefail; NO_COLOR=1 buildozer android debug deploy run logcat 2>&1 | tee buildrun.log
halfclean:
	-cd .buildozer/android/platform/python-for-android && git pull
	-for pkg in $(PKGS); do \
		rm -rf .buildozer/android/platform/*/build/python-installs/*/"$$pkg"; \
		rm -rf .buildozer/android/platform/*/build/other_builds/*/"$$pkg"; \
	done
	-rm -rf .buildozer/android/platform/*/dists
