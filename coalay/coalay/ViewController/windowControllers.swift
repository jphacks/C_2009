//
//  mainLayerViewController.swift
//  coalay
//
//  Created by 落合裕也 on 2020/11/07.
//  Copyright © 2020 落合裕也. All rights reserved.
//

import Cocoa
import SwiftUI

class WindowControllers{
    static var shared = WindowControllers()
    
    private let width = NSScreen.main?.frame.width ?? 400
    private let height = NSScreen.main?.frame.height ?? 400
    var mainWindow = MainWindow()
    var MainController:NSWindowController
    var layerController :NSWindowController
    var GuestToolBarController :NSWindowController
    var HostToolBarController :NSWindowController
    init(){
        let subcontentView = TransparentWindow(width: width, height: height)
        let GuesttoolBarContentView = GuestToolBar()
        let HosttoolBarContentView = HostToolBar()
        
        let subwindow = OpaqueWindow(width: width, height: height)
        let GuesttoolBarWindow = GuestToolBarWindow()
        let HosttoolBarWindow = HostToolBarWindow()
        
        subwindow.contentView = NSHostingView(rootView: subcontentView)
        GuesttoolBarWindow.contentView = NSHostingView(rootView: GuesttoolBarContentView)
        HosttoolBarWindow.contentView = NSHostingView(rootView: HosttoolBarContentView)
        self.MainController = NSWindowController(window: self.mainWindow)
        self.layerController = NSWindowController(window:subwindow)
        
        self.HostToolBarController = NSWindowController(window:HosttoolBarWindow)
        self.HostToolBarController.close()
        self.GuestToolBarController = NSWindowController(window:GuesttoolBarWindow)
        self.GuestToolBarController.close()
        self.layerController.close()
        
    }
}
