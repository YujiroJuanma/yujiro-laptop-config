#!/bin/python

#All my keybindings

import subprocess
def run_command(command):
    """Helper function to run shell commands."""
    try:
        subprocess.run(command, check=True, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    except subprocess.CalledProcessError as e:
        print(f"Error running command: {e.cmd}")
        print(f"STDOUT: {e.stdout.decode()}")
        print(f"STDERR: {e.stderr.decode()}")
    except FileNotFoundError:
        print(f"Command not found: {command.split()[0]}")


#some keybinds to launch different apps
run_command("riverctl map normal Super Return spawn alacritty")
run_command("riverctl map normal Super E spawn pcmanfm")
run_command("riverctl map normal Super W spawn firefox")
run_command("riverctl map normal Super+Shift E spawn ~/.config/rofi/powermenu/type-3/powermenu.sh")
run_command("riverctl map normal Super D spawn ~/.config/rofi/launchers/type-1/launcher.sh")
run_command("riverctl map normal Super S spawn ~/scripts/spotify_launch.sh")
run_command("riverctl map normal Super A spawn ~/scripts/nvim_launch.sh")


#keybinds for window/focus control.
run_command("riverctl map normal Super+Shift J swap next")
run_command("riverctl map normal Super+Shift K swap previous")
run_command("riverctl map normal Super J focus-view next")
run_command("riverctl map normal Super K focus-view previous")
run_command("riverctl map normal Super F toggle-fullscreen")
run_command("riverctl map normal Super Space toggle-float")
run_command("riverctl map normal Super Q close")

#workspace/tag setup!
# Map tags to keys
for i in range(1, 10):
    tags = 1 << (i - 1)
    run_command(f"riverctl map normal Super {i} set-focused-tags {tags}")
    print(f"Set {i} to {tags}")
    run_command(f"riverctl map normal Super+Shift {i} set-view-tags {tags}")


#keybinds for laptop fn keys
run_command("riverctl map -repeat normal None XF86AudioRaiseVolume  spawn 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+'")
run_command("riverctl map -repeat normal None XF86AudioLowerVolume  spawn 'wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-'")
run_command("riverctl map normal None XF86AudioMute         spawn 'wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle'")
run_command("riverctl map normal None XF86AudioMedia spawn 'playerctl play-pause'")
run_command("riverctl map normal None XF86AudioPrev  spawn 'playerctl previous'")
run_command("riverctl map normal None XF86AudioStop spawn 'playerctl stop'")
run_command("riverctl map normal None XF86AudioNext  spawn 'playerctl next'")
run_command("riverctl map -repeat normal None XF86MonBrightnessUp   spawn 'brillo -A 5'")
run_command("riverctl map -repeat normal None XF86MonBrightnessDown spawn 'brillo -U 5'")

