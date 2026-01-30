# Function to perform a risky operation
risky_operation() {
    local fname="$1"
    if [ -f "$fname" ]; then
        echo "Processing file: $fname"
        # Add risky operation here (e.g., deleting file)
        rm -rf "$fname"
        echo "$file deleted successfully."
    else
        echo "Error: File $fname does not exist."
    fi
}

echo "enter a fname"
read fname
echo "$fname"
risky_operation "$fname"
