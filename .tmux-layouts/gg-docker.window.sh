# Set window root path. Default is `$session_root`.
# Must be called before `new_window`.
#window_root "~/Projects/gg-docker"

# Create new window. If no argument is given, window name will be based on
# layout file name.
new_window "gg-docker"

# Split window into panes.
split_v 50
split_h 50

# Run commands.
run_cmd "npm run start -- --build fe"  0   # runs in active pane
run_cmd "cd ~/work/gg/portal-system-tests" 2
run_cmd "git pull" 1  # runs in pane 1

# Paste text
#send_keys "top"    # paste into active pane
#send_keys "date" 2 # paste into pane 1

# Set active pane.
select_pane 0
