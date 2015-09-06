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
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        // set tracking area
        var opts = (NSTrackingAreaOptions.MouseEnteredAndExited | NSTrackingAreaOptions.ActiveAlways)
        trackingArea = NSTrackingArea(rect: bounds, options: opts, owner: self, userInfo: nil)
        self.addTrackingArea(trackingArea)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        // set tracking area
        var opts = (NSTrackingAreaOptions.MouseEnteredAndExited | NSTrackingAreaOptions.ActiveAlways)
        trackingArea = NSTrackingArea(rect: bounds, options: opts, owner: self, userInfo: nil)
        self.addTrackingArea(trackingArea)
    }
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        
        // Drawing code here.
    }
    
    override func mouseEntered(theEvent: NSEvent) {
        var cell = self.cell() as! NSButtonCell
        cell.backgroundColor = hoverBackgroundColor
        cell.image = hoverBackgroundImage
        
    }
    
    override func mouseExited(theEvent: NSEvent) {
        var cell = self.cell() as! NSButtonCell
        cell.backgroundColor = originalBackgroundColor
        cell.image = originalBackgroundImage
    }
    
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
    
}