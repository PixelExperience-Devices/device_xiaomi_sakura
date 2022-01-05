/*
 * Copyright (C) 2022 The Android Open Source Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#ifndef _BDROID_BUILDCFG_H
#define _BDROID_BUILDCFG_H
// Disables read remote device feature
#define BTA_SKIP_BLE_READ_REMOTE_FEAT FALSE
#define MAX_ACL_CONNECTIONS    7
#define MAX_L2CAP_CHANNELS    16
#define BLE_VND_INCLUDED   TRUE
// skips conn update at conn completion
#define BTA_BLE_SKIP_CONN_UPD  FALSE
#define BLE_PERIPHERAL_ADV_NAME  FALSE
#define BTM_SCO_ENHANCED_SYNC_ENABLED FALSE

#define BTA_DISABLE_DELAY 1000 /* in milliseconds */
#define BTM_WBS_INCLUDED TRUE
#define BTIF_HF_WBS_PREFERRED TRUE
#endif
