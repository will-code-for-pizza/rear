# 100_hostname.sh
#
# take hostname for Relax-and-Recover
#
# This file is part of Relax-and-Recover, licensed under the GNU General
# Public License. Refer to the included COPYING for full text of license.

# For Arch Linux storing the host name in /etc/hostname (lowercase)
# will set the host name in the recovery environment without any scripting.

# If /etc/hostname exists => put hostname in $ROOTFS_DIR/etc/hostsname
# Needed by Arch Linux
[[ -e /etc/hostname ]] && echo $HOSTNAME >$ROOTFS_DIR/etc/hostname

# If /etc/HOSTNAME exists => put hostname in $ROOTFS_DIR/etc/HOSTNAME
# Used by most of the other Linux Distro.
# SUSE 12 has both file, but seems to use /etc/HOSTNAME to setup hostname. (see #1316)
[[ -e /etc/HOSTNAME ]] && echo $HOSTNAME >$ROOTFS_DIR/etc/HOSTNAME
