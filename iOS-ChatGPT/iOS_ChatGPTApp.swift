//
//  iOS_ChatGPTApp.swift
//  iOS-ChatGPT
//
//  Created by Mihai Dorhan on 20.03.2023.
//

import SwiftUI

@main
struct iOS_ChatGPTApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, CoreDataManager.shared.persistentContainer.viewContext)
                .environmentObject(Model())
        }
    }
}
