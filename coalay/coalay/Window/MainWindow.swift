//
//  MainWindow.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import Cocoa

class MainWindow:NSPanel{
    init() {
        super.init(
            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
            backing: .buffered, defer: false)
        self.center()
        self.setFrameAutosaveName("Main Window")
        self.makeKeyAndOrderFront(nil)
        self.level = .normal
        
        
    }
    
}
