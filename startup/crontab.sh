# This cronjob automatically mounts the google drive to your home directory
(crontab -l 2>/dev/null; echo "@reboot rclone mount gdrive: $HOME/gdrive") | crontab -

