//
//  JZHoverNSButton.swift
//
//  Created by Joey on 8/28/15.
//  Copyright (c) 2015 Joey Zhou. All rights reserved.
//

import Cocoa

class JZHoverNSButton: NSButton {
    
    var trackingArea:NSTrackingArea!
    var hoverBackgroundColor: NSColor = NSColor.grayColor()
    var originalBackgroundColor: NSColor = NSColor.whiteColor()
    var hoverBackgroundImage: NSImage!
    var originalBackgroundImage: NSImage!
    var attributedStr: NSMutableAttributedString!
    
    // MARK: - Initializers
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        // set tracking area
        let opts: NSTrackingAreaOptions = ([NSTrackingAreaOptions.MouseEnteredAndExited, NSTrackingAreaOptions.ActiveAlways])
        trackingArea = NSTrackingArea(rect: bounds, options: opts, owner: self, userInfo: nil)
        self.addTrackingArea(trackingArea)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        // set tracking area
        let opts: NSTrackingAreaOptions = ([NSTrackingAreaOptions.MouseEnteredAndExited, NSTrackingAreaOptions.ActiveAlways])
        trackingArea = NSTrackingArea(rect: bounds, options: opts, owner: self, userInfo: nil)
        self.addTrackingArea(trackingArea)
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        
        // Drawing code here.
    }
    
    // MARK: mouse events
    override func mouseEntered(theEvent: NSEvent) {
        let cell = self.cell as! NSButtonCell
        cell.backgroundColor = hoverBackgroundColor
        cell.image = hoverBackgroundImage
        
    }
    
    override func mouseExited(theEvent: NSEvent) {
        let cell = self.cell as! NSButtonCell
        cell.backgroundColor = originalBackgroundColor
        cell.image = originalBackgroundImage
    }
    
    // MARK: background setters
    func setImages(bgColor: NSColor, imageOriginal: NSImage, imageHover: NSImage) {
        self.hoverBackgroundColor = bgColor
        self.originalBackgroundColor = bgColor
        self.originalBackgroundImage = imageOriginal
        self.hoverBackgroundImage = imageHover
    }
    
    func setColors(originalBgColor: NSColor, hoverBgColor:NSColor) {
        self.hoverBackgroundColor = hoverBgColor
        self.originalBackgroundColor = originalBgColor
        self.originalBackgroundImage = nil
        self.hoverBackgroundImage = nil
    }
    
    // MARK: attributed text setters
    func setText(str: String, color: NSColor, size: Int64) {
        attributedStr = NSMutableAttributedString(string: str)
        attributedStr.addAttribute(NSForegroundColorAttributeName, value: color, range: NSRange(location: 0, length:attributedStr.length))
        attributedStr.addAttribute(NSFontSizeAttribute, value: size.description, range: NSRange(location: 0, length:attributedStr.length))
        self.attributedTitle = attributedStr
    }
    
    func setText(str: String, color: NSColor) {
        attributedStr = NSMutableAttributedString(string: str)
        attributedStr.addAttribute(NSForegroundColorAttributeName, value: color, range: NSRange(location: 0, length:attributedStr.length))
        self.attributedTitle = attributedStr
    }
    
    
}