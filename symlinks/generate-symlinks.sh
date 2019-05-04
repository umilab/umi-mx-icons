#!/bin/bash
#
# Description:
#   A script for quick generation of symlinks of an in-development icon theme
#
# Legal Stuff:
#
# This script is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation; version 3.
#
# This script is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program; if not, see <https://www.gnu.org/licenses/gpl-3.0.txt>


DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
THEME="production"

# echo $DIR

# Icon sizes and contexts
CONTEXTS=("actions" "apps" "categories" "devices" "emblems" "places" "status" "stock" "web")
SIZES=("8" "16" "22" "24" "32" "48" "64" "96" "256" "8@2x" "16@2x" "22@2x" "24@2x" "32@2x" "48@2x" "64@2x" "96@2x" "256@2x" "scalable")

# Fullcolor icons
echo "Generating links for bitmap icons..."
# contexts for loop
for CONTEXT in "${CONTEXTS[@]}"
do
	echo " -- "${CONTEXT}
	# Sizes Loop
	for SIZE in "${SIZES[@]}"
	do
		LIST="$DIR/bitmaps/$CONTEXT.list"
		# Check if directory exists
		if [ -d "$DIR/../$THEME/$CONTEXT/$SIZE" ]; then
			cd $DIR/../$THEME/$CONTEXT/$SIZE
			while read line;
			do
				ln -sf $line
			done < $LIST
			cd $DIR/../$THEME
		else
			echo "  -- skipping "$CONTEXT"/"$SIZE
		fi
	done
done
echo "Done."

# echo $DIR
# Clear symlink errors
if command -v symlinks 2>&1 >/dev/null; then
	echo "Deleting broken links..."
	symlinks -cdr cd $DIR/../$THEME
	echo "Done."
fi
