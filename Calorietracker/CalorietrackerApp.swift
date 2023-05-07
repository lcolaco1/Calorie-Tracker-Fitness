//
//  CalorietrackerApp.swift
//  Calorietracker
//
//  Created by Lovelesh Joseph Colaco on 5/6/23.
//

import SwiftUI

@main
struct CalorietrackerApp: App {
    @State private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,dataController.container.viewContext)
        }
    }
}
