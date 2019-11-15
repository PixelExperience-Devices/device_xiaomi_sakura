#!/bin/bash
#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=sakura
VENDOR=xiaomi

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

MK_ROOT="${MY_DIR}"/../../..

HELPER="${MK_ROOT}/vendor/aosp/build/tools/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

SECTION=
KANG=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC="adb"
fi

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${MK_ROOT}" true "${CLEAN_VENDOR}"

extract "${MY_DIR}/proprietary-files.txt" "${SRC}" \
        "${KANG}" --section "${SECTION}"

BLOB_ROOT="${MK_ROOT}/vendor/${VENDOR}/${DEVICE}/proprietary"

patchelf --set-soname "libicuuc-v27.so" "${DEVICE_BLOB_ROOT}/vendor/lib/libicuuc-v27.so"
patchelf --set-soname "libminikin-v27.so" "${DEVICE_BLOB_ROOT}/vendor/lib/libminikin-v27.so"

patchelf --replace-needed "android.frameworks.sensorservice@1.0.so android.frameworks.sensorservice@1.0-v27.so" "${DEVICE_BLOB_ROOT}/vendor/lib/libvidhance_gyro.so"
patchelf --replace-needed "libminikin.so libminikin-v27.so" "${DEVICE_BLOB_ROOT}/vendor/lib/libMiWatermark.so"
patchelf --replace-needed "libicuuc.so libicuuc-v27.so" "${DEVICE_BLOB_ROOT}/vendor/lib/libMiWatermark.so"

patchelf --replace-needed "vendor.qti.hardware.camera.device@1.0_vendor.so vendor.qti.hardware.camera.device@1.0.so" "${DEVICE_BLOB_ROOT}/vendor/bin/hw/android.hardware.camera.provider@2.4-service"
patchelf --replace-needed "vendor.qti.hardware.camera.device@1.0_vendor.so vendor.qti.hardware.camera.device@1.0.so" "${DEVICE_BLOB_ROOT}/vendor/lib/camera.device@1.0-impl.so"
patchelf --replace-needed "vendor.qti.hardware.camera.device@1.0_vendor.so vendor.qti.hardware.camera.device@1.0.so" "${DEVICE_BLOB_ROOT}/vendor/lib/hw/android.hardware.camera.provider@2.4-impl.so"
patchelf --replace-needed "vendor.qti.hardware.camera.device@1.0_vendor.so vendor.qti.hardware.camera.device@1.0.so" "${DEVICE_BLOB_ROOT}/vendor/lib64/camera.device@1.0-impl.so"
patchelf --replace-needed "vendor.qti.hardware.camera.device@1.0_vendor.so vendor.qti.hardware.camera.device@1.0.so" "${DEVICE_BLOB_ROOT}/vendor/lib64/hw/android.hardware.camera.provider@2.4-impl.so"

"${MY_DIR}/setup-makefiles.sh"
