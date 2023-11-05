#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
if [ -f main.go ]; then
 
  test_cases=($(find testCases -type f))

  for file in "${test_cases[@]}"; do
    output_file="./testOut/$(basename "$file" .txt)Out.txt"
    go run main.go "$file" "$output_file"
  done
else
  echo "File main.go not found"
fi

for file in "${test_cases[@]}"; do

  base_name=$(basename "$file" .txt)

  diff "testOut/${base_name}Out.txt" "testX/${base_name}X.txt"
  if [ $? -eq 0 ]; then
    printf "${GREEN}------$base_name Bim!------\n\n${NC}"
    rm   "testOut/${base_name}Out.txt"
  else
    printf "${RED}------$base_name Oh Snap------\n\n${NC}"
  fi
done
