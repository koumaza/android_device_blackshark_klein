#!/usr/bin/env bash
set -Eeuo pipefail
mkdir -p ~/recovery_${GITHUB_REPOSITORY}
cd ~/recovery_${GITHUB_REPOSITORY}
repo init -u git://github.com/PitchBlackRecoveryProject/manifest_pb.git -b android-10.0
repo sync -c -j$(($(nproc --all) * 24)) --force-sync --no-clone-bundle --no-tags
mkdir -p device/blackshark && git clone https://github.com/${GITHUB_REPOSITORY}.git --depth=1 --single-branch device/blackshark/klein && cd device/blackshark/klein && git lfs pull && cd ../../../
. build/envsetup.sh
lunch koumaza_klein-eng
mka recoveryimage
