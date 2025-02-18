#!/bin/bash

# Function to display a menu and get the user's choice
function select_genre() {
    echo "Select a genre:"
    PS3="Enter the number of your choice: "
    options=("Fiction" "Non-Fiction" "Science Fiction" "Fantasy" "Mystery" "Biography" "History" "Exit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Exit")
                echo "Exiting."
                exit 1
                ;;
            *)
                echo "You chose $opt"
                echo $opt
                return
                ;;
        esac
    done
}

# Prompt for book details
read -p "Enter the title: " title
read -p "Enter the author: " author
read -p "Enter the image URL: " image_url
read -p "Enter the link URL: " link_url
read -p "Do you highly recommend it? (yes/no): " recommend

# Get the genre
genre=$(select_genre)

# Append the new entry to reading.yml
cat <<EOL >> reading.yml
- title: "$title"
  author: "$author"
  image_url: "$image_url"
  link_url: "$link_url"
  recommend: "$recommend"
  genre: "$genre"
EOL

# Commit the changes to git
git add reading.yml
git commit -m "Add new book: $title by $author"

echo "New book added and committed to git." 