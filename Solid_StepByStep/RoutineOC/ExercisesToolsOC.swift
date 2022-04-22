//
//  ExercisesToolsOC.swift
//  Solid_StepByStep
//
//  Created by Jose Manuel Ortiz Sanchez on 22/4/22.
//

import Foundation

protocol ExerciseSummary {
    func showExerciseSummary(exercise: Exercise) -> String
}

final class ExercisesToolsOC {
    
    public func showRoutineSummary(exercises: [Exercise]) {
        print("YOUR ROUTINE, GO!!!\n")
        exercises.forEach { exercise in
            switch exercise.type {
            case 1:
                print(StrenghtExerciseSummary().showExerciseSummary(exercise: exercise))
            default:
                print(CardioExerciseSummary().showExerciseSummary(exercise: exercise))
            }
        }
    }
}


final class StrenghtExerciseSummary: ExerciseSummary {
    func showExerciseSummary(exercise: Exercise) -> String {
        """
            Exercise: \(exercise.name)
            Number of series: \(exercise.numberOfSeries)
            Number of repetitions: \(exercise.repetitions)
            Weight: \(exercise.weight)")
            Rest in seconds: \(exercise.restBetweenSeries) seconds")
        
        """
    }
}

final class CardioExerciseSummary: ExerciseSummary {
    func showExerciseSummary(exercise: Exercise) -> String {
        """
            Exercise: \(exercise.name)
            Duration: \(exercise.duration / 60) minutes
        
        """
    }
}
