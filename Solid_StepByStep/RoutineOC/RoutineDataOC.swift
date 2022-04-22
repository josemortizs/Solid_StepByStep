//
//  RoutineDataOC.swift
//  Solid_StepByStep
//
//  Created by Jose Manuel Ortiz Sanchez on 22/4/22.
//

import Foundation

protocol RoutineSaveData {
    func saveRoutine(exercises: [Exercise])
}

final class RoutineDataOC {
    
    var routineSaveData: RoutineSaveData
    
    init(routineSaveData: RoutineSaveData) {
        self.routineSaveData = routineSaveData
    }
    
    public func saveRoutine(exercises: [Exercise]) {
        routineSaveData.saveRoutine(exercises: exercises)
    }
}


final class SaveRoutineJSONData: RoutineSaveData {
    func saveRoutine(exercises: [Exercise]) {
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
