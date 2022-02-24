#!/bin/sh
isPaused(){
    paused=$(dunstctl is-paused);
    notify-send "$paused"
}
isPaused