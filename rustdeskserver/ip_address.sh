#!/bin/bash

# Detect the local IP (non-loopback)
HOST_IP=$(hostname -I | awk '{print $1}')
echo "Detected HOST_IP: $HOST_IP"

# Write it into .env so docker-compose can read it
echo "HOST_IP=$HOST_IP" > .env

# Run docker-compose
docker-compose up -d