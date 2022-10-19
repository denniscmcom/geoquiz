//
//  DataController.swift
//  GeoQuiz
//
//  Created by Dennis Concepción Martín on 19/10/22.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "GeoQuiz")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}