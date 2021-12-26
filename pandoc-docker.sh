#! /bin/sh
tlmgr install enumitem
echo "Generating en-US PDF with solutions..."
pandoc -d pandoc-en.yaml
[[ $? -eq 0 ]] && echo "Successfully created the en-US PDF!"
echo "Generating zh-cn PDF with solutions..."
pandoc -d pandoc-zh.yaml
[[ $? -eq 0 ]] && echo "Successfully created the zh-cn PDF!"
