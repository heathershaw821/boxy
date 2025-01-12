all: zfs install templates

install:
	install -m 755 -g wheel -o root media/* /usr/local/jails/boxy-corral/media/
	install -m 755 -g wheel -o root boxy /usr/local/bin/boxy

zfs:
	mkdir -p /usr/local/jails/boxy-corral
	zfs create -o mountpoint=/usr/local/jails/boxy-corral zroot/boxy-corral
	zfs create zroot/boxy-corral/media
	zfs create zroot/boxy-corral/templates
	zfs create zroot/boxy-corral/containers

templates:
	# Debian bookworm
	zfs create -p zroot/boxy-corral/templates/bookworm
	tar --no-xattrs -xf /usr/local/jails/boxy-corral/media/bookworm -C /usr/local/jails/boxy-corral/templates/bookworm --unlink
	cp /etc/resolv.conf /usr/local/jails/boxy-corral/templates/bookworm/etc/
	cp /etc/localtime /usr/local/jails/boxy-corral/templates/bookworm/etc/
	zfs snapshot zroot/boxy-corral/templates/bookworm@base
	# FreeBSD 14.2-RELEASE
	zfs create -p zroot/boxy-corral/templates/FreeBSD-14.2
	tar --no-xattrs -xf /usr/local/jails/boxy-corral/media/FreeBSD-14.2 -C /usr/local/jails/boxy-corral/templates/FreeBSD-14.2 --unlink
	cp /etc/resolv.conf /usr/local/jails/boxy-corral/templates/FreeBSD-14.2/etc/
	cp /etc/localtime /usr/local/jails/boxy-corral/templates/FreeBSD-14.2/etc/
	zfs snapshot zroot/boxy-corral/templates/FreeBSD-14.2@base

