#!/bin/bash

USERNAME="vagrant"

LIGHTDM_CONFIG=/etc/lightdm/lightdm.conf
GDM_CUSTOM_CONFIG=/etc/gdm/custom.conf
NODPMS_CONFIG=/etc/xdg/autostart/nodpms.desktop

mkdir -p $(dirname ${GDM_CUSTOM_CONFIG})
echo "[daemon]" >> $GDM_CUSTOM_CONFIG
echo "# Enabling automatic login" >> $GDM_CUSTOM_CONFIG
echo "AutomaticLoginEnable=True" >> $GDM_CUSTOM_CONFIG
echo "AutomaticLoginEnable=${USERNAME}" >> $GDM_CUSTOM_CONFIG

echo "==> Configuring lightdm autologin"
echo "[SeatDefaults]" >> $LIGHTDM_CONFIG
echo "autologin-user=${USERNAME}" >> $LIGHTDM_CONFIG
echo "allow-guest=false" >> $LIGHTDM_CONFIG
echo "user-session=gnome-fallback" >> $LIGHTDM_CONFIG

echo "==> Disabling screen blanking"
echo "[Desktop Entry]" >> $NODPMS_CONFIG
echo "Type=Application" >> $NODPMS_CONFIG
echo "Exec=xset -dpms s off s noblank s 0 0 s noexpose" >> $NODPMS_CONFIG
echo "Hidden=false" >> $NODPMS_CONFIG
echo "NoDisplay=false" >> $NODPMS_CONFIG
echo "X-GNOME-Autostart-enabled=true" >> $NODPMS_CONFIG
echo "Name[en_US]=nodpms" >> $NODPMS_CONFIG
echo "Name=nodpms" >> $NODPMS_CONFIG
echo "Comment[en_US]=" >> $NODPMS_CONFIG
echo "Comment=" >> $NODPMS_CONFIG
