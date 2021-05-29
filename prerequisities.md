# prerequisites

## ddvk hacks

Your tablet must support the modification of the suspended screen **without reboot**. This functionality has been removed by rM updates (I think since v2.5) so you will have to install [ddvk remarkable hacks](https://github.com/ddvk/remarkable-hacks) to recover it. If you have an old installed system, you may be able to bypass the installation of the hacks. To check this,have a look at the many tutorials to set a custom suspended screen. If after changing the suspended screen, you don't have to reboot your device to have your new custom suspended screen available, you don't need the hacks. 

## opkg package manager

Follow the instruction at [Evidlo's Remarkable Entware page](https://github.com/Evidlo/remarkable_entware ) to install the opkg manager.


## GraphicsMagick

Install the GraphicsMagick package by connecting to ssh to your device and using the command-line:

    /opt/bin/opkg install graphicsmagick

Type  `/opt/bin/gm` in the shell to see if it is properly installed. You sould see something like this:

    reMarkable: ~/ /opt/bin/gm
    GraphicsMagick 1.3.35 2020-02-23 Q8 http://www.GraphicsMagick.org/
    Copyright (C) 2002-2020 GraphicsMagick Group.
    Additional copyrights and licenses apply to this software.
    See http://www.GraphicsMagick.org/www/Copyright.html for details.
    Usage: /opt/bin/gm command [options ...]

    Where commands include:
        batch - issue multiple commands in interactive or batch mode
    benchmark - benchmark one of the other commands
        compare - compare two images
    composite - composite images together
        conjure - execute a Magick Scripting Language (MSL) XML script
        convert - convert an image or sequence of images
        help - obtain usage message for named command
    identify - describe an image or image sequence
        mogrify - transform an image or sequence of images
        montage - create a composite image (in a grid) from separate images
        time - time one of the other commands
        version - obtain release version
