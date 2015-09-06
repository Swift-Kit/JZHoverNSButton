# JZHoverNSButton
Subclass of NSButton which has hover attributes

## Usage
Drag `JZHoverNSButton.swift` to your project

Either init with one of the initializer or create via Interface Builder and set the class of NSImageView as JZAvatarNSImageView

This HoverNSButton supports two ways of hovering: 

* Background image

```
myButton.setImages(NSColor.blackColor()!,
            imageOriginal: NSImage(named: "original-button")!,
            imageHover: NSImage(named: "hover-button")!)
```
* Background color

```
myButton.setColors(NSColor.blackColor()!,
			hoverBgColor: NSColor.whiteColor()!)
```

## License
MIT, see license file