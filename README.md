# JZHoverNSButton
Subclass of NSButton which has hover attributes

## Usage
Drag `JZHoverNSButton.swift` to your project

Either init with one of the initializer or create via Interface Builder and set the class of NSButton as JZHoverNSButton

This NSButton class supports two ways of hovering: 

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

### Attributed String
It also supports attributed string via these two setters

```
myButton.setText(str, NSColor.whiteColor(), size: 15)

OR

myButton.setText(str, NSColor.whiteColor())
```

## License
MIT, see license file