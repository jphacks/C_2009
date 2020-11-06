//
//  OpaqueWindow.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import Cocoa

class OpaqueWindow:NSPanel{
    init(width:CGFloat,height:CGFloat) {
        let mask = Debug ?[StyleMask.titled, StyleMask.nonactivatingPanel]:[StyleMask.nonactivatingPanel] as  NSWindow.StyleMask
        
        super.init(
            contentRect: NSRect(x: 0, y: 0, width: width, height:height),
        styleMask: mask,
        backing: .buffered, defer: false)
        self.backgroundColor = NSColor.clear
        self.isOpaque = false
        self.hasShadow = false
        self.title = "OpaqueWindow"
        self.collectionBehavior = [ .fullScreenAuxiliary,.canJoinAllSpaces]
        self.level = .screenSaver
        
    }
    
}
