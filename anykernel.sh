# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Installing RM6785 lineage KSU kernel ...
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=RMX2151
device.name2=rmx2151
device.name3=rmx2161
device.name4=RMX2161
device.name5=RMX2001
device.name6=RM6785
device.name7=rm6785
device.name8=wasabi 
device.name9=RMX2002
device.name10=rmx2001
device.name11=rmx2001L1
device.name12=RMX2001L1
device.name13=rmx2002
device.name14=rmx2002L1
device.name15=RMX2002L1
device.name16=RMX2003
device.name17=IN2023
device.name18=RMX3031
device.name19=GM1917
device.name20=RM6785
device.name21=rm6785
device.name22=RMX2156
device.name23=RMX2161
device.name24=RMX2163
device.name25=RMX2153
device.name26=RMX2153L1
device.name27=RMX2161L1
device.name28=RMX2163L1

supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;


## AnyKernel boot install
dump_boot;

write_boot;
## end boot install


# shell variables
#block=vendor_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

# reset for vendor_boot patching
#reset_ak;


## AnyKernel vendor_boot install
#split_boot; # skip unpack/repack ramdisk since we don't need vendor_ramdisk access

#flash_boot;
## end vendor_boot install

