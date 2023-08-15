#!/usr/bin/env bash

# Loop through each file in the current directory
for file in *; do
    # Check if the file is a regular file
    if [ -f "$file" ]; then
        # Check if the first line is not "#!/usr/bin/env bash"
        if ! head -1 "$file" | grep -q "#!/usr/bin/env bash"; then
            # Use sed to replace the first line
            sed -i '1s|^.*$|#!/usr/bin/env bash|' "$file"
            
            echo "Updated shebang in '$file'."
        fi
    fi
done
