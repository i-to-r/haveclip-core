HaveClip - a simple clipboard synchronization tool
==================================================

Have you ever grown tired of thinking how to transfer a link or a text from one
computer to another? Will you email yourself, use 3rd party service like
Pastebin, or will you copy it by hand?

HaveClip is the solution. Ctrl+C on one computer, Ctrl+V on another. Simple.

Main features are:

 - synchronize clipboard on multiple devices
 - save clipboard history, easily get overwritten data
 - integration with paste services like Pastebin.com

Clipboard is instantly synchronized across all your devices. It can handle all
forms of text, images and even application-specific data.

HaveClip is multiplatform. Copy something in one OS, paste in another.
Supports Windows, Linux and Mac OS X. Client for Android is a work in progress.
It should also be possible to create client for iOS and other OSes, if desired.

So far it is not possible to copy files over network with HaveClip. I would
like to implement it though.

Requirements
------------
HaveClip for desktop is written in C++ using the Qt framework.

 - Qt at least 4.7. It might work with older versions, but it's not tested.
   - modules core, gui, network and xml

Download
--------
 - Source: [https://secure.havefun.cz/~aither/pub/releases/HaveClip-0.6.0-src.tar.gz](https://secure.havefun.cz/~aither/pub/releases/HaveClip-0.6.0-src.tar.gz)
 - Windows 32-bit: [https://secure.havefun.cz/~aither/pub/releases/HaveClip-0.6.0-win32.zip](https://secure.havefun.cz/~aither/pub/releases/HaveClip-0.6.0-win32.zip)

Build
-----
    # tar -xzf HaveClip-0.6.0-src.tar.gz
    # cd HaveClip-0.6.0-src
    # qmake
    # make

Installation
------------
You can copy it to /usr/local/bin

    # cp HaveClip /usr/local/bin/

or wherever you want.

Run with

    # ./HaveClip

Usage
-----
HaveClip runs in background. There is no window when you launch it, only tray
icon will show up.

If you left-click the tray icon, menu with clipboard history will pop up.
Right-click triggers menu with options and pasting. These two menus are merged
in one in OS X.

First thing you want to do is to setup devices where the clipboard will be
synced. Right-click on the tray icon and select Settings. Go to tab Pool
and add IP addresses of your devices. The format for each entry is
IP address:port. For example:

    1.2.3.4:9999

Now when you copy something into clipboard, it will be sent to all devices
listed in Pool.

It is not recommended to use HaveClip over slow or network connections with FUP,
since it can transfer a lot of data. For instance, image copied from GIMP
is saved to clipboard in multiple formats, so the size can exceed a few
tens of MB.

Features
--------
Where as the main functionality is present on all platforms,
not all other features are. The most equipped is the Linux version. It can
show you a preview of clipboard contents in tooltip of tray icon. This is not
possible to easily implement on other platforms.

HaveClip can be handy even if not used for clipboard syncing. It saves
clipboard history, allowing you to jump back and forth. It has integrated
support for paste services. With HaveClip you can easily create pastes from
the contents of clipboard. Support of specific application you work in is not
required.

Currently, HaveClip supports these paste services:

 - Stikked - [https://github.com/claudehohl/Stikked](https://github.com/claudehohl/Stikked)
 - Pastebin.com - [http://pastebin.com](http://pastebin.com)

In Linux, when you copy something and then close the application, the copied
data is lost. HaveClip prevents that. If the clipboard contents suddenly
disappears, it will be reset.

For planned features see TODO.

License
-------
HaveClip is released under GNU/GPL.

WARNING
-------
The clipboard is definitely a private thing, so be careful where and how you use
HaveClip. Be sure to use SSL/TLS encryption, generate your own certificate
and use access password.