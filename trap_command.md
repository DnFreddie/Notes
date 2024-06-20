- Handels **signals** during sccipr execution 
```bash
# Define a function to handle signals by name
handle_signal() {
  local signal_name="$1"
  echo "Signal $signal_name received."
  exit 
}

# List of signal names
signal_names="HUP INT QUIT ILL TRAP ABRT BUS FPE USR1 SEGV USR2 PIPE ALRM TERM"

# Trap signals by name and call the handle_signal function
for sig in $signal_names; do
  trap 'handle_signal $sig' $sig
done

# Infinite loop to keep the script running
while true; do
  echo "Script is running..."
  sleep 5
done

```

---
[[Process management_signals.canvas|Process management_signals]]
[command](/obisdian_ntoes/scriptss/command.md)