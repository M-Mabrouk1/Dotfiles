#!/usr/bin/env bash

umount () {
	sudo umount -t cifs //192.168.1.2/$1 
}

share=("Main-Desktop" "ROKA" "MH")

for ((i = 0 ; i < 3 ; i++)); do
	umount ${share[i]}
done
