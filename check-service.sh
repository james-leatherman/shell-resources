#!/bin/bash

SERVICE=$1
systemctl is-active --quiet $SERVICE && echo "$SERVICE is running" || echo "$SERVICE is not running"
