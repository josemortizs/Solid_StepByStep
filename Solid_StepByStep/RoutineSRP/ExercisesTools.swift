//
//  ExercisesTools.swift
//  Solid_StepByStep
//
//  Created by Jose Manuel Ortiz Sanchez on 22/4/22.
//

import Foundation

final class ExercisesTools {
    
    public func showRoutineSummary(exercises: [Exercise]) {
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
