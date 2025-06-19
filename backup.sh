!#/bin/bash

# Create a backup directory

BACKUP_DIR="./backups/$(date +%Y-%m-%d)"
echo "Creating backup directory: $BACKUP_DIR"
mkdir -p $BACKUP_DIR

# Check if directory was created successfully
if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Failed to create backup directory"
    exit 1
fi


# Copy important files
sudo cp /var/log/mongodb/mongod.log $BACKUP_DIR
sudo cp /var/log/mysql/error.log $BACKUP_DIR

# Clean up old temporary files
rm -f /tmp/*.tmp

echo "Daily backup completed for $(date)"
