#!/usr/bin/env bash
set -e

read -r -p "Enter principal amount: " principal
read -r -p "Enter annual rate of interest (%): " rate
read -r -p "Enter time period (years): " time

if ! [[ "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   ! [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: Please enter valid non-negative numbers."
  exit 1
fi

if command -v bc >/dev/null 2>&1; then
  interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
else
  interest=$(python3 -c 'import sys; p, r, t = map(float, sys.argv[1:]); print(f"{p*r*t/100:.2f}")' "$principal" "$rate" "$time")
fi
printf "Simple Interest = %s\n" "$interest"
