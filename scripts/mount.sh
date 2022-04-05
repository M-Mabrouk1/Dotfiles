#!/usr/bin/env bash

mount () {
	sudo mount -t cifs //192.168.1.2/$1 /home/mabrouk/Desktop/mnt/$1 -o credentials=/etc/samba/credentials/share,uid=mabrouk,gid=mabrouk,cache=loose,vers=3.0
}

share=("Main-Desktop" "ROKA" "MH")

for ((i = 0 ; i < 3 ; i++)); do
	mount ${share[i]}
done
