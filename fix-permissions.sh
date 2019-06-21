#!/bin/bash
echo "Setting all files' owner to $(whoami)"
sudo chown -R $(whoami) .
