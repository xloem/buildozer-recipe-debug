buildrun:
	set -o pipefail; buildozer android debug deploy run | tee buildrun.log
	set -o pipefail; stdbuf -o0 adb logcat | stdbuf -o0 -i0 grep '\(python\|zygote\)' | tee -a buildrun.log
