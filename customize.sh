##########################################################################################
#
# MMT Extended Config Script
#
##########################################################################################

##########################################################################################
# Config Flags
##########################################################################################

# Uncomment and change 'MINAPI' and 'MAXAPI' to the minimum and maximum android version for your mod
# Uncomment DYNLIB if you want libs installed to vendor for oreo+ and system for anything older
# Uncomment DEBUG if you want full debug logs (saved to /sdcard)
#MINAPI=21
#MAXAPI=25
#DYNLIB=true
#DEBUG=true

##########################################################################################
#                                Tissot-Max
#                                    v2
#                       Reach your maximum performance
#
#           We are not responsible for future damage to your device
#
# Instalationn........
# 
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info why you would need this

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
/system/vendor/etc/thermal-engine.conf
/system/vendor/etc/perf/commonresourceconfigs.xml
/system/vendor/etc/perf/perfboostsconfig.xml
/system/vendor/etc/perf/perfconfigstore.xml
/system/vendor/etc/perf/targetconfig.xml
/system/vendor/etc/perf/targetresourceconfigs.xml
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  : # Remove this if adding to this function

  # Note that all files/folders in magisk module directory have the $MODPATH prefix - keep this prefix on all of your files/folders
  # Some examples:
  
  # For directories (includes files in them):
  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm_recursive $MODPATH/system/vendor/etc/thermal-engine.conf 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/vendor/etc/perf/commonresourceconfigs.xml 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/vendor/etc/perf/perfboostsconfig.xml 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/vendor/etc/perf/perfconfigstore.xml 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/vendor/etc/perf/targetconfig.xml 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/vendor/etc/perf/targetresourceconfigs.xml 0 0 0755 0644
  # set_prem_recursive $MODPATH/system/etc/permission/handheld_core_hardware.xml 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/etc/opperf.xml 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/etc/ramboost.xml 0 0 0755 0644

  # For files (not in directories taken care of above)
  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  
}

##########################################################################################
#                                    Finished 
#                  Enjoy ur gayming , enjoy ur "setrika portable"
##########################################################################################

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
