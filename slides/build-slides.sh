#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename (without extension)>"
    exit 1
fi

FILE="$1"

pandoc "${FILE}.md" --include-in-header=preamble.tex -t beamer -o "${FILE}.pdf"

echo "PDF generated: ${FILE}.pdf"
