//
//  Routine.swift
//  Solid_StepByStep
//
//  Created by Jose Manuel Ortiz Sanchez on 19/4/22.
//

import Foundation

final class Routine {
    
    private var exercises: [Exercise]
    
    init(exercises: [Exercise]) {
        self.exercises = exercises
    }
    
    public func saveRoutine() {
        let jsonEnconder = JSONEncoder()
        let jsonData = try? jsonEnconder.encode(self.exercises)
        
        if let jsonData = jsonData {
            let jsonString = String(decoding: jsonData, as: UTF8.self)
            UserDefaults.standard.set(jsonString, forKey: "actualRoutine")
            print("Rutina guardada: \n")
            print(jsonString)
        }
    }
    
    public func showRoutineSummary() {
        print("YOUR ROUTINE, GO!!!\n")
        exercises.forEach { exercise in
            showExerciseSummary(exercise: exercise)
        }
    }
    
    private func showExerciseSummary(exercise: Exercise) {
        print("Exercise: \(exercise.name)")
        print("Number of series: \(exercise.numberOfSeries)")
        print("Number of repetitions: \(exercise.repetitions)")
        print("Weight: \(exercise.weight)")
        print("Duration: \(exercise.duration / 60) minutes")
        print("Rest in seconds: \(exercise.restBetweenSeries) seconds")
        print("\n")
    }
}
