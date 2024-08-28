echo "Select an operation:"
echo "1) Copy a file"
echo "2) Remove a file"
echo "3) Move a file"
echo "4) Rename a file"
echo "5) Exit"
read choice

case $choice in
	1)
		echo "Enter the source file path:"
    		read source_file
    		if [ ! -f "$source_file" ]; then
        	echo "Error: $source_file does not exist."
    		fi

		echo "Enter the target directory:"
    		read target_directory
    		if [ ! -d "$target_directory" ]; then
        	echo "Error: $target_directory is not a valid directory."
    		fi

    		cp "$source_file" "$target_directory"
    		echo "File copied to $target_directory."
		;;
	2)
		echo "Enter the file to remove:"
    		read file_to_remove
    		if [ ! -f "$file_to_remove" ]; then
        	echo "Error: $file_to_remove does not exist."
    		fi

    		rm "$file_to_remove"
    		echo "File $file_to_remove has been removed."
		;;
	3)
		echo "Enter the file to move:"
    		read file_to_move
    		if [ ! -f "$file_to_move" ]; then
        	echo "Error: $file_to_move does not exist."
    		fi

    		echo "Enter the target directory:"
    		read target_directory
    		if [ ! -d "$target_directory" ]; then
        	echo "Error: $target_directory is not a valid directory."
    		fi

    		mv "$file_to_move" "$target_directory"
    		echo "File moved to $target_directory."
		;;
	4)
		echo "Enter the current file name:"
    		read current_file_name
    		if [ ! -f "$current_file_name" ]; then
        	echo "Error: $current_file_name does not exist."
    		fi

    		echo "Enter the new file name:"
    		read new_file_name

    		mv "$current_file_name" "$new_file_name"
    		echo "File renamed to $new_file_name."
		;;
	5)
		echo "Exiting ..."
		exit
		;;
	*)
		echo "Invalid $choice"
		;;
esac	
