//
//  DataController.swift
//  Calorietracker
//
//  Created by Lovelesh Joseph Colaco on 5/6/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "FoodModel")
    
    init() {
        container.loadPersistentStores{
            desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext)
    {
        do
        {
        try context.save()
        print("Data saved")
        } catch {
            print("not save data")
        }
    }
    
    func addFood(name: String, calories: Double, context: NSManagedObjectContext)
    {
        let food = Food(context: context)
        food.id = UUID()
        food.date = Date()
        food.name = name
        food.calories = calories
        save(context: context)
    }
    
    func editFood(name: String, calories: Double, context: NSManagedObjectContext)
    {
        let food = Food(context:context)
        food.date = Date()
        food.name = name
        food.calories = calories
        
        save(context: context)
    }
}
