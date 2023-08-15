#!/usr/bin/env bash
isPaused(){
    paused=$(dunstctl is-paused);
    notify-send "$paused"
}
isPaused