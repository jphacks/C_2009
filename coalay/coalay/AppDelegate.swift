//
//  AppDelegate.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/01.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    var window: NSWindow!
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        let width = NSScreen.main?.frame.width ?? 400
        let height = NSScreen.main?.frame.height ?? 400
        //let contentView = ContentView()
        let contentView = TransparentWindow(width: width, height: height)
        window = OpaqueWindow(width: width, height: height)
        window.setFrameAutosaveName("Main Window")
        window.contentView = NSHostingView(rootView: contentView)
        window.makeKeyAndOrderFront(nil)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    
}

