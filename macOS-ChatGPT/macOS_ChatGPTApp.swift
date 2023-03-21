//
//  macOS_ChatGPTApp.swift
//  macOS-ChatGPT
//
//  Created by Mihai Dorhan on 20.03.2023.
//

import SwiftUI

@main
struct macOS_ChatGPTApp: App {
    
    @NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
                .environment(\.managedObjectContext, CoreDataManager.shared.persistentContainer.viewContext)
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    
    private var statusItem: NSStatusItem!
    private var popover: NSPopover!
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        if let statusButton = statusItem.button {
            statusButton.image = NSImage(systemSymbolName: "brain", accessibilityDescription: "Brain")
            statusButton.action = #selector(togglePopover)
        }
        self.popover = NSPopover()
        self.popover.contentSize = NSSize(width: 600, height: 600)
        self.popover.behavior = .transient
        self.popover.contentViewController = NSHostingController(rootView: ContentView().environmentObject(Model()).environment(\.managedObjectContext, CoreDataManager.shared.persistentContainer.viewContext))
    }
    
    @objc func togglePopover() {
        if let button = statusItem.button {
            if popover.isShown {
                self.popover.performClose(nil)
            } else {
                popover.show(relativeTo: button.bounds, of: button, preferredEdge: .minY)
            }
        }
    }
    
}
