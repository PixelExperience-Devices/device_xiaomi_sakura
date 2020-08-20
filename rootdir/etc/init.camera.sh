# Camera
# If there is not a persist value, we need to set one
if [ ! -f /data/property/persist.camera.profile ]; then
    setprop persist.camera.profile 0
fi
