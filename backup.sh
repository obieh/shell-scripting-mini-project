!#/bin/bash

# Create a backup of the current directory

BACKUP_DIR="/backups/$(date +%Y-%m-%d)"
mkdir -p $BACKUP_DIR

# Copy important files
cp /var/log/mongodb/mongod.log $BACKUP_DIR
cp /var/log/mysql/error.log $BACKUP_DIR

# Clean up old temporary files
rm -f /tmp/*.tmp

echo "Daily backup completed for $(date)"
