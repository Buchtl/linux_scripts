
# Usefull stuff for mounting things

## prerequisites for nfs
* install `sudo apt install nfs-common`

# Misc
* list block devices: `lsblk`
* determine uuid for a disk: `sudo blkid /dev/sdd1`

## Editing fstab
* after edit reload: `sudo systemctl daemon-reload`
* mount fstab: `sudo mount -a`
