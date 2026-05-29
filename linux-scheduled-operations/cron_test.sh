#!/bin/bash

LOG_FILE="$HOME/cron_test.log"
TEST_FILE="$HOME/cron_test_output.txt"

echo "$(date '+%Y-%m-%d %H:%M:%S'): Cron test script started" >> "$LOG_FILE"
echo "$(date '+%Y-%m-%d %H:%M:%S'): USER=$USER" >> "$LOG_FILE"
echo "$(date '+%Y-%m-%d %H:%M:%S'): HOME=$HOME" >> "$LOG_FILE"
echo "$(date '+%Y-%m-%d %H:%M:%S'): PATH=$PATH" >> "$LOG_FILE"

echo "Cron test executed at $(date)" >> "$TEST_FILE"

UPTIME_INFO=$(uptime)

echo "$(date '+%Y-%m-%d %H:%M:%S'): $UPTIME_INFO" >> "$LOG_FILE"

echo "$(date '+%Y-%m-%d %H:%M:%S'): Cron test completed" >> "$LOG_FILE"
