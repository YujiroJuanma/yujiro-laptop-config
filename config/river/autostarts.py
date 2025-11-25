#autostart all my programs


import time

import subprocess
def run_command(command):
    """
    Helper function to run shell commands.
    Modified to use popen, bc most of these need to run in the background
    """
    try:
        subprocess.Popen(command, shell=True)
    except subprocess.CalledProcessError as e:
        print(f"Error running command: {e.cmd}")
        print(f"STDOUT: {e.stdout.decode()}")
        print(f"STDERR: {e.stderr.decode()}")
    except FileNotFoundError:
        print(f"Command not found: {command.split()[0]}")


run_command("swaybg -i ~/Pictures/foggy_valley_1.png")
run_command("/usr/bin/brillo -S 95")
run_command("/usr/bin/wireplumber")
time.sleep(0.5) # sleep to give audio server time to catch up
run_command("/usr/bin/pipewire ")
run_command("/usr/bin/waybar ")
run_command("/usr/bin/waybar --config /home/yujirodogma/.config/waybar/taskbar.jsonc --style /home/yujirodogma/.config/waybar/taskbar.css")
run_command("/usr/bin/lxsession ")
run_command("/usr/bin/mako ")
run_command("~/scripts/music/spt_status_notify.zsh ")
