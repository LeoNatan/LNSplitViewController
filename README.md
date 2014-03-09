LNSplitViewController
=====================

A wrapper around Apple's ```UISplitViewController``` that allows use anywhere in the view hierarchy (for example, display modally).

How To Use
==========

Add the two files to your project, import ```LNSplitViewController.h``` and use.
```LNSplitViewController``` exposes a very similar public API to ```UISplitViewController```.

You can access the internal ```UISplitViewController``` through the ```internalSplitViewController``` property. Likewise, you can reach the ```LNSplitViewController``` container through the ```containingLNSplitViewController``` property, defined in the ```LNSplitViewControllerAdditions``` category.