
View all logs:
# View all logs
journalctl

# Check current boot logs
journalctl -b

# Check boot logs from before last
journalctl -b -2

# Tail logs
journalctl -f

# Show service errors since time
journalctl -u mysql -p err --since "30 minutes ago"

# 0 Emergency 1 Alert 2 Critical 3 Error 4 Warning 5 Notice 6 Info 7 Debug
# Show logs at err level
journalctl -p err

journalctl --since today
Logs from a specific date range:

# Show logs in date range
journalctl --since "2023-01-01" --until "2023-01-02"

# Show service errors from date
journalctl -u nginx -p err --since "2023-01-01"

#Enable persistent logging:
sudo mkdir -p /var/log/journal
sudo systemd-tmpfiles --create
sudo systemctl restart systemd-journald
Now your logs will survive reboots!

# Save logs to file
journalctl > /var/log/system_logs.log

# Find string in logs
journalctl | grep "error"

# Filter logs by service and keyword
journalctl -u nginx | grep "timeout"

# Show boot logs
journalctl -b -1

# Show failed boot servies
journalctl -b --priority=3

# Identify slow boot services
systemd-analyze blame

# Check Kernel messages on boot
journalctl -k -b

# Show only last 100
journalctl -n 100

# Output logs in json
journalctl -o json-pretty

# Clear old logs
sudo journalctl --vacuum-time=2weeks
