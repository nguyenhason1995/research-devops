#!/bin/bash

# This script generates a list of random passwords.

# A random number as a password
PASSWORD="${RANDOM}"

echo "${PASSWORD}"

# Three random numbers together.
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

PASSWORD=$(date +%s)
echo "${PASSWORD}"

# Use the current date/time as the basis for the password.
PASSWORD=$(date +%s)
echo "${PASSWORD}"

# Use nanoseconds to act as randomization
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"
# A better password.
#PASSWORD=$(date + %s%N | head -c3)
#echo "${PASSWORD}"

# An even better password.
#PASSWORD=$(date +%s${RANDOM}${RANDOM} | head-c10)
#echo "${PASSWORD}"

# Append a special character to the password.
SPECIAL_CHARACTER=$(echo '!@#$%^&*()' |fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARATER}"

