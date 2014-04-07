# grull_gscam_decklink

Launch and configuration files for cameras connected to BlackMagic DeckLink capture cards

## Requirements

 * [GSCAM](http://wiki.ros.org/gscam). It is a ROS camera driver that uses gstreamer to connect to devices such as webcams. To compile GSCAM these system packages are required:
   * libgstreamer0.10-dev
   * libgstreamer-plugins-base0.10-dev
 * gstreamer0.10-plugins-bad system package.
 * BlackMagic DeckLink drivers for Linux.

## BlackMagic DeckLink drivers

The DeckLink drivers for your card can be downloaded from the [manufacturer web page](http://www.blackmagicdesign.com/support). Yet, in folder ```scripts``` there is a script which download a install it into the system:

    $ scripts/install_libdecklink.sh
