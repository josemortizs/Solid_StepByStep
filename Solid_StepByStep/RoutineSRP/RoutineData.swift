//
//  RoutineData.swift
//  Solid_StepByStep
//
//  Created by Jose Manuel Ortiz Sanchez on 22/4/22.
//

import Foundation

final class RoutineData {
    
    public func saveRoutine(exercises: [Exercise]) {
        let jsonEnconder = JSONEncoder()
        let jsonData = try? jsonEnconder.encode(exercises)
        
        if let jsonData = jsonData {
            let jsonString = String(decoding: jsonData, as: UTF8.self)
            UserDefaults.standard.set(jsonString, forKey: "actualRoutine")
            print("Rutina guardada: \n")
            print(jsonString)
        }
    }
}
