//
//  AppDelegate.swift
//  toolbarTest
//
//  Created by Sabesh Bharathi on 17/02/22.
//

import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {

    
    private var window: NSWindow?

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window = NSWindow(contentRect: NSMakeRect(0, 0, 1000, 800), styleMask: [.titled, .closable, .resizable, .miniaturizable, .fullSizeContentView],
                          backing: .buffered,
                          defer: false)
        window?.title = "ToolBar"
        let maincontentView = SampleView().edgesIgnoringSafeArea(.all)
        window?.contentView = NSHostingView(rootView: maincontentView)
        window?.makeKeyAndOrderFront(nil)
        window?.center()
    }

}

