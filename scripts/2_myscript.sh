#! /bin/bash

read -p "What is your name? " name
echo "Hello ${name}, nice to meet you!"

read -p "Tell me the path of the file you want to open: " path
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  open "$path"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # Linux
  xdg-open "$path" || echo "xdg-open not available. Install it with: sudo apt install xdg-utils"
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
  # Windows (Cygwin, Git Bash, or WSL)
  cmd.exe /c start "$path" || echo "Failed to open path. Ensure it's valid."
else
  echo "Unsupported OS"
fi
