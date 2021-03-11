#!/bin/bash
# This is a maintenance script for arch/manjaro
# Requires pacman, paccache and rmlint
while true
do
echo ' '
echo '░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░'
echo '░░░░░░ MAINTENANCE TOOL ░░░░░░'
echo '░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░'
PS3='Choose what to do: '
commands=("Update system" "Remove package clutter" "Clear package cache" "Clear user cache" "Clean up systemd journals" "Quit")
select item in "${commands[@]}"; do
    case $item in
        "Update system")
            echo "Updating system now"
            sudo pacman -Syu
            echo "Done"
            break
            ;;
        "Remove package clutter")
            echo "Removing clutter now"
            sudo pacman -Rsn $(pacman -Qdtq)
            echo "Done"
            break
            ;;
        "Clear package cache")
            echo "Clearing package cache"
            sudo paccache -r && paccache -ruk0
            echo "Done"
            break
            ;;
        "Clear user cache")
            echo "Removing files in ~/.cache"
            rm -rf ~/.cache/*
            echo "Done"
            break
            ;;
        "Clean up systemd journals")
            echo "Removing journals older than 4 weeks"
            sudo journalctl --vacuum-time=4weeks
            echo "Done"
            break
            ;;
        "Quit")
            echo "User requested exit"
            exit
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
done
