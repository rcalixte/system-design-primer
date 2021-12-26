#! /bin/bash

# 
generate_pdf_with_solutions() {
  echo "Generating en-US PDF with solutions..."
  pandoc -d pandoc-en.yaml
  [[ $? -eq 0 ]] && echo "Done! You can find the en-US book at system-design-primer.pdf"
  echo "Generating zh-cn PDF with solutions..."
  pandoc -d pandoc-zh.yaml
  [[ $? -eq 0 ]] && echo "Done! You can find the zh-cn book at system-design-primer-zh.pdf"
}

# Check if dependencies exist
check_dependencies () {
  for dependency in "${dependencies[@]}"
  do
    if ! [ -x "$(command -v $dependency)" ]; then
      echo "Error: $dependency is not installed." >&2
      exit 1
    fi
  done
}

dependencies=("pandoc" "tex")

check_dependencies
generate_pdf_with_solutions
