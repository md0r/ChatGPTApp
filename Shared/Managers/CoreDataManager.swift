//
//  CoreDataManager.swift
//  ChatGPTApp
//
//  Created by Mihai Dorhan on 20.03.2023.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "HistoryModel")
        persistentContainer.loadPersistentStores { _, error in
            if let error = error {
                fatalError(error.localizedDescription)
            }
        }
    }
    
}
