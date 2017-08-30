# Puppet-FreeBSD-Deluge
A Puppet Module for running Deluge on FreeBSD

## What does this do?
This is a puppet module, written to allow you to install the Deluge torrent client
on your FreeBSD server. It makes use of ZFS, and manages your deluge user, as well as 
folder locations and configs.
By default, remote access is turned off, but can easily be enabled (see below).

## Requirements
This module requires you to also have installed Snonux's ZFS module, available at 
https://github.com/snonux/puppet-modules

## I can't connect!
Did you edit `./files/auth` and `./files/core.conf`?
By default, Deluge does NOT allow remote connections from the desktop client.
You need to edit `core.conf` and change `"allow_remote": false,` on line 24 to 
`"allow_remote": true,` to allow the daemon to talk to a remote client.
You also need to edit `./files/auth` and add your user to a new line.
See http://dev.deluge-torrent.org/wiki/UserGuide/ThinClient#AddUsertotheauthenticationfile
for more information!