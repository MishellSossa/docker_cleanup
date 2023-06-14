#!/bin/bash

# Color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

files=(
    "/Applications/docker"
    "/Library/PrivilegedHelperTools/com.docker.vmnetd"
    "/Library/LaunchDaemons/com.docker.vmnetd.plist"
    "/usr/local/lib/docker"
    "$HOME/.docker"
    "$HOME/Library/Application Support/Docker Desktop"
    "$HOME/Library/Preferences/com.docker.docker.plist"
    "$HOME/Library/Saved Application State/com.electron.docker-frontend.savedState"
    "$HOME/Library/Group Containers/group.com.docker"
    "$HOME/Library/Logs/Docker Desktop"
    "$HOME/Library/Preferences/com.electron.docker-frontend.plist"
    "$HOME/Library/Cookies/com.docker.docker.binarycookies"
)

for file in "${files[@]}"; do
    if [ -e "$file" ]; then
        echo -e "${GREEN}File $file exists, deleting...${NC}"
        rm -rf "$file"
        echo -e "${GREEN}File $file deleted.${NC}"
    else
        echo -e "${RED}File $file does not exist.${NC}"
    fi
done