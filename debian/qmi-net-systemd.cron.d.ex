#
# Regular cron jobs for the qmi-net-systemd package.
#
0 4	* * *	root	[ -x /usr/bin/qmi-net-systemd_maintenance ] && /usr/bin/qmi-net-systemd_maintenance
