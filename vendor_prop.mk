# ART
PRODUCT_PROPERTY_OVERRIDES += \
dalvik.vm.dex2oat-filter=speed \
dalvik.vm.image-dex2oat-filter=speed

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
af.fast_track_multiplier=1 \
audio.deep_buffer.media=true \
audio.offload.min.duration.secs=30 \
audio.offload.video=true \
av.debug.disable.pers.cache=1 \
persist.dirac.acs.controller=qem \
persist.dirac.acs.ignore_error=1 \
persist.dirac.acs.storeSettings=1 \
persist.vendor.audio.hw.binder.size_kbyte=1024 \
persist.vendor.audio.speaker.prot.enable=false \
ro.af.client_heap_size_kbyte=7168 \
ro.audio.soundfx.dirac=true \
ro.vendor.audio.sdk.ssr=false \
ro.vendor.audio.sos=true \
ro.vendor.audio.voice.volume.boost=manual \
vendor.audio.chk.cal.spk=0 \
vendor.audio.chk.cal.us=0 \
vndor.audio.dolby.ds2.enabled=false \
vendor.audio.dolby.ds2.hardbypass=false \
vendor.audio.flac.sw.decoder.24bit=true \
vendor.audio.hw.aac.encoder=true \
vendor.audio.offload.buffer.size.kb=64 \
vendor.audio.offload.gapless.enabled=true \
vendor.audio.offload.multiaac.enable=true \
vendor.audio.offload.multiple.enabled=false \
vendor.audio.offload.passthrough=false \
vendor.audio.offload.track.enable=true \
vendor.audio.parser.ip.buffer.size=262144 \
vendor.audio.playback.mch.downsample=true \
vendor.audio.pp.asphere.enabled=false \
vendor.audio.safx.pbe.enabled=true \
vendor.audio.tunnel.encode=false \
vendor.audio.use.sw.alac.decoder=true \
vendor.audio.use.sw.ape.decoder=true \
vendor.audio_hal.period_size=192 \
vendor.voice.conc.fallbackpath=deep-buffer \
vendor.voice.path.for.pcm.voip=true \
vendor.voice.playback.conc.disabled=true \
vendor.voice.record.conc.disabled=false \
vendor.voice.voip.conc.disabled=true

# Audio Feature
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.feature.kpi_optimize.enable=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
bluetooth.hfp.client=1 \
vendor.qcom.bluetooth.soc=pronto \
vendor.bluetooth.soc=pronto \
ro.bluetooth.hfp.ver=1.7 \
ro.qualcomm.bt.hci_transport=smd \
persist.vendor.bt.aac_frm_ctl.enabled=true \

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
vidc.enc.dcvs.extra-buff-count=2 \
media.camera.ts.monotonic=1 \
persist.vendor.camera.display.lmax=1280x720 \
persist.vendor.camera.display.umax=1920x108 \
vendor.camera.hal1.packagelist=com.skype.raider,com.google.android.talk,com.whatsapp \
vendor.camera.lowpower.record.enable=1 \
vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.huaqin.factory,com.mi.AutoTest \
vendor.camera.aux.packagelist2=com.android.systemui,com.huaqin.cameraautotest,com.huaqin.runtime \
vendor.camera.aux.packageblacklist=com.discord \
persist.vendor.qti.telephony.vt_cam_interface=2 \
persist.vendor.camera.dual.camera=0 \
persist.vendor.camera.eis.enable=1 \
persist.vendor.camera.gyro.disable=0 \
persist.vendor.camera.isp.clock.optmz=0 \
persist.vendor.camera.stats.test=5 \
persist.vendor.camera.CDS=off \
persist.camera.HAL3.enabled=1

# Cne
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.cne.feature=1

# Coresight
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.coresight.config=stm-events

# Console
PRODUCT_PROPERTY_OVERRIDES += \
persist.console.silent.config=1

# Cpu in core control
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.core_ctl_min_cpu=2 \
ro.vendor.qti.core_ctl_max_cpu=4

# Dirac - D2AO-1004
PRODUCT_PROPERTY_OVERRIDES += \
persist.dirac.afm.mode=global \
persist.dirac.poolsize=3

# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.enable.sglscale=1 \
debug.gralloc.enable_fb_ubwc=1 \
debug.sf.recomputecrop=0 \
debug.sf.enable_gl_backpressure=1 \
dev.pm.dyn_samplingrate=1 \
persist.demo.hdmirotationlock=false \
persist.hwc.enable_vds=1 \
persist.hwc.mdpcomp.enable=true \
ro.opengles.version=196610 \
ro.qualcomm.cabl=0 \
ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
debug.sdm.support_writeback=0 \
ro.vendor.display.cabl=2 \
sdm.debug.disable_skip_validate=1 \
vendor.display.enable_default_color_mode=1 \
vendor.display.disable_skip_validate=1 \
vendor.gralloc.enable_fb_ubwc=1

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
persist.qfp=false

# FM
PRODUCT_PROPERTY_OVERRIDES += \
ro.fm.transmitter=false \
vendor.hw.fm.init=0

# Frp
PRODUCT_PROPERTY_OVERRIDES += \
ro.frp.pst=/dev/block/bootdevice/by-name/config

# Keystore
PRODUCT_PROPERTY_OVERRIDES += \
ro.hardware.keystore_desede=true

# HWUI
PRODUCT_PROPERTY_OVERRIDES += \
ro.hwui.texture_cache_size=72 \
ro.hwui.layer_cache_size=48 \
ro.hwui.r_buffer_cache_size=8 \
ro.hwui.path_cache_size=32 \
ro.hwui.gradient_cache_size=1 \
ro.hwui.drop_shadow_cache_size=6 \
ro.hwui.texture_cache_flushrate=0.4 \
ro.hwui.text_small_cache_width=1024 \
ro.hwui.text_small_cache_height=1024 \
ro.hwui.text_large_cache_width=2048 \
ro.hwui.text_large_cache_height=1024

# IMS debug
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.ims.disableADBLogs=1 \
persist.vendor.ims.disableDebugLogs=1 \
persist.vendor.ims.disableIMSLogs=1 \
persist.vendor.ims.disableQXDMLogs=1

# Location
PRODUCT_PROPERTY_OVERRIDES += \
persist.backup.ntpServer=0.pool.ntp.org

# Media
PRODUCT_PROPERTY_OVERRIDES += \
vendor.audio.hw.aac.encoder=true \
vendor.mm.enable.qcom_parser=1048575 \
vendor.vidc.dec.downscalar_height=1088 \
vendor.vidc.dec.downscalar_width=1920 \
vendor.vidc.disable.split.mode=1 \
vendor.vidc.enc.disable.pq=true \
vendor.vidc.enc.disable_bframes=1 \
vendor.video.disable.ubwc=1

# Netflix
PRODUCT_PROPERTY_OVERRIDES += \
ro.netflix.bsp_rev=Q660-13149-1

# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.use_data_netmgrd=true \
persist.data.netmgrd.qos.enable=true \
persist.vendor.data.mode=concurrent

# Nitz
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.radio.nitz_plmn="" \
persist.vendor.radio.nitz_lons_0="" \
persist.vendor.radio.nitz_lons_1="" \
persist.vendor.radio.nitz_lons_2="" \
persist.vendor.radio.nitz_lons_3="" \
persist.vendor.radio.nitz_sons_0="" \
persist.vendor.radio.nitz_sons_1="" \
persist.vendor.radio.nitz_sons_2="" \
persist.vendor.radio.nitz_sons_3=""

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.sys.fw.dex2oat_thread_count=8 \
ro.vendor.extension_library=libqti-perfd-client.so \
ro.vendor.qti.sys.fw.bservice_enable=true

# Qualcomm
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
ro.vendor.qti.va_aosp.support=1

# QTI Performance
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.at_library=true \
vendor.iop.enable_uxe=1 \
vendor.perf.iop_v3.enable=true \
vendor.perf.iop_v3.enable.debug=false \
vendor.enable.prefetch=false \
vendor.iop.enable_prefetch_ofr=false \
vendor.perf.gestureflingboost.enable=true \
vendor.perf.workloadclassifier.enable=true

# Rescue party
PRODUCT_PROPERTY_OVERRIDES += \
persist.sys.disable_rescue=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
DEVICE_PROVISIONED=1 \
persist.data.iwlan.enable=true \
persist.data.iwlan=1 \
persist.data.iwlan.ipsec.ap=1 \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.ims_volte_enable=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.radio.videopause.mode=1 \
persist.radio.calls.on.ims=1 \
persist.radio.csvt.enabled=false \
persist.radio.mt_sms_ack=20 \
persist.radio.multisim.config=dsds \
persist.radio.VT_ENABLE=1 \
persist.radio.VT_CAM_INTERFACE=2 \
persist.radio.volte.dan_support=true \
persist.sys.cust.lte_config=true \
persist.vendor.radio.apm_sim_not_pwdn=1 \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.data_con_rprt=1 \
persist.vendor.radio.data_ltd_sys_ind=1 \
persist.vendor.radio.jbims=1 \
persist.vendor.radio.hw_mbn_update=0 \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.sw_mbn_update=0 \
persist.vendor.radio.sib16_support=1 \
persist.vendor.radio.iwlan.enable=1 \
persist.vendor.data.iwlan.enable=true \
ril.subscription.types=NV,RUIM \
rild.libargs=-d/dev/smd0 \
rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
ro.telephony.iwlan_operation_mode=legacy \
ro.telephony.call_ring.multiple=false \
ro.telephony.default_network=20,20 \
persist.sys.fflag.override.settings_network_and_internet_v2=true \
service.qti.ims.enabled=1 \
telephony.lteOnCdmaDevice=1 \
persist.vendor.vt.supported=1 \
persist.vendor.sys.cnd.iwlan=1 \
persist.vendor.cne.logging.qxdm=3974

# SurfaceFlinger
PRODUCT_PROPERTY_OVERRIDES += \
ro.surface_flinger.protected_contents=true \
debug.sf.early_phase_offset_ns=1500000 \
debug.sf.early_app_phase_offset_ns=1500000 \
debug.sf.early_gl_phase_offset_ns=3000000 \
debug.sf.early_gl_app_phase_offset_ns=15000000 \
ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
ro.surface_flinger.max_virtual_display_dimension=4096

PRODUCT_PROPERTY_OVERRIDES += \
debug.sf.disable_backpressure=1

# Thermal configs path
PRODUCT_PROPERTY_OVERRIDES += \
sys.thermal.data.path=/data/vendor/thermal/

# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.delta_time.enable=true \
persist.delta_time.enable=true

# Tcp
PRODUCT_PROPERTY_OVERRIDES += \
net.tcp.2g_init_rwnd=10

# UI
PRODUCT_PROPERTY_OVERRIDES += \
sys.use_fifo_ui=1

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.usb.config.extra=none

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0

# Unsorted properties
PRODUCT_PROPERTY_OVERRIDES += \
keyguard.no_require_sim=true \
persist.fuse_sdcard=true \
persist.mm.sta.enable=0 \
persist.vendor.data.profile_update=true \
persist.vendor.radio.prefer_spn=1 \
ro.memperf.lib=libmemperf.so \
ro.memperf.enable=false \
ro.vendor.display.sensortype=2 \
ro.vendor.qti.am.reschedule_service=true \
ro.vendor.qti.sys.fw.bservice_age=5000 \
ro.vendor.qti.sys.fw.bservice_limit=5 \
ro.vendor.qti.sys.fw.empty_app_percent=50 \
ro.vendor.qti.sys.fw.trim_cache_percent=100 \
ro.vendor.qti.sys.fw.trim_empty_percent=100 \
ro.vendor.qti.sys.fw.trim_enable_memory=2147483648 \
ro.vendor.qti.sys.fw.use_trim_settings=true
