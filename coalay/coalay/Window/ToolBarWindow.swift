//
//  ToolBarWindow.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import Cocoa


class HostToolBarWindow:NSPanel{
    init() {
        super.init(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled],
            backing: .buffered, defer: false)
        self.collectionBehavior = [ .fullScreenAuxiliary,.canJoinAllSpaces]
        self.setFrameAutosaveName("ToolBar")
        self.level = .popUpMenu
        
        
    }
    
}

class GuestToolBarWindow:NSPanel{
    init() {
        super.init(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled],
            backing: .buffered, defer: false)
        self.collectionBehavior = [ .fullScreenAuxiliary,.canJoinAllSpaces]
        self.setFrameAutosaveName("ToolBar")
        self.level = .popUpMenu
        
        
    }
    
}
