#!/bin/bash
#!/bin/bash
#!/bin/bash

shopt -s nullglob  # Ensure we handle the case where there are no *.txt files
shopt -s nocaseglob  # Enable case-insensitive filename matching

for file in *.txt; do
    sed -i 's/IITM/IIT Madras/gI' "$file"
done


