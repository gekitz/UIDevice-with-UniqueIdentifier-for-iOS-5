
** NOTE: this is not going to work under iOS 7 **

# Description

Apple stopped supporting a unique identifier for iOS. This source code solves the problem. It generates a unique identifier based on the mac address of the device in combination with the bundle identifier.

What you need to do:

- copy `NSString+MD5Addition` and `UIDevice+IdentifierAddition` to your project.

- if your are using ARC in your project, you have to add the `-fno-objc-arc` flag to both files. [Apple ARC Guidelines](http://developer.apple.com/library/mac/#releasenotes/ObjectiveC/RN-TransitioningToARC/Introduction/Introduction.html)

- use `[[UIDevice currentDevice] uniqueDeviceIdentifier]` to retrieve the unique identifier (it's a hash of your Bundle ID + MAC address)

- use `[[UIDevice currentDevice] uniqueGlobalDeviceIdentifier]` to retrieve a global unique identifier (it's a hash of the MAC address, used for tracking between different apps).

- have fun and follow [gekitz](http://twitter.com/gekitz) ;)

//Thanks to Erica Sadun for her UIDevice+Hardware Addition (used for the mac address retrieval).

# License
see license file.

