#!/bin/bash

echo "Starting Project Setup for Canteen PWA..."

# Create directories
while read -r line; do
    mkdir -p $line
done < folders.txt

# Create files
while read -r line; do
    touch $line
done < files.txt

# Create README
echo "# Canteen Ordering PWA" > README.md

# Search for word in README
grep "Canteen" README.md

echo "Project setup complete!"