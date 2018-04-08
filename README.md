UMI MVX Icon Theme
==================

The best of **M ~ Moka**, **V ~ Vivacious** and **X ~ X** icons harmony.
UMI MVX Icons theme use icons/elements of 
[Vivacious](http://www.ravefinity.com/p/vivacious-colors-gtk-icon-theme.html), 
[Faenza](https://tiheum.deviantart.com/art/Faenza-Icons-173323228), 
[Moka/Faba](https://github.com/moka-project/moka-icon-theme), 
[Elementary](https://github.com/elementary/icons), 
[KDE Breeze](https://github.com/KDE/breeze-icons), 
[Numix](https://github.com/numixproject/numix-icon-theme) & 
[Mbuntu-Y Icons](https://launchpad.net/~noobslab/+archive/ubuntu/themes/+build/7128035).


This Icon Theme (the icon assets and sources) are licensed under a [Creative Commons Attribution-ShareAlike 4.0](http://creativecommons.org/licenses/by-sa/4.0/legalcode) license.

Any bundled software is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3, or (at your option) any later version.

### Getting the Source

The official source for UMI MVX Icons Theme can be found [here](https://github.com/umilinux/umi-mvx-icons). You can clone the latest version from the git repository:

    git clone https://github.com/umilinux/umi-mvx-icons.git

### Using the Source

There are scripts to simplify the rendering process; to run them (and edit icons) you will need:

 * inkscape
 * python3

To render new icons from their source SVG files, run the following from within the `/src` subdirectory:

    ./render-bitmaps.py

If it's throwing an error, the script may not be executable, try:

	chmod +x render-bitmaps.py

This script will look in the source directories `/src/*` and render the respective icons (provided there are changes).

Afterwards, the rendered icons need to be installed.
To do this, you may just copy the `production` directory to `~/.local/share/icons/umi-mvx`.
However, if you, lets say, added an icon named `web-example` and want to install only this particular icon, then you should run

    find -name 'web-example.png' -exec cp --parents {} ~/.local/share/icons/ \;

from inside of this repository's root directory.

### Building/Installing UMI MVX

You can build and install the theme from source or run the included install script.

    bash autogen.sh
    make
    sudo make install

-----------
