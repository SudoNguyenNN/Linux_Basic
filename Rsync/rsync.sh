#!/bin/bash
# file: /home/nguyennn/rsync_run.sh

# Ghi log thời gian bắt đầu
echo "=== $(date '+%F %T') - Start rsync ===" >> /home/nguyennn/rsync.log

# Chạy lệnh rsync (đường dẫn đầy đủ để cron có thể hiểu)
# - bạn nên dùng đường dẫn đầy đủ tới rsync và ssh
/usr/bin/rsync -avzh -e "/usr/bin/ssh -o StrictHostKeyChecking=no" /home/nguyennn/Rsync nguyennn@192.168.158.191:/home/nguyennn/ >> /home/nguyennn/rsync.log 2>&1

# Ghi log thời gian kết thúc
echo "=== $(date '+%F %T') - End rsync ===" >> /home/nguyennn/rsync.log

