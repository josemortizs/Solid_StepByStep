//
//  RoutineOC.swift
//  Solid_StepByStep
//
//  Created by Jose Manuel Ortiz Sanchez on 22/4/22.
//

import Foundation

final class RoutineOC {
    
    public var exercises: [Exercise]
    public var exercisesTools: ExercisesToolsOC
    public var routineData: RoutineDataOC
    
    init(exercises: [Exercise], routineSaveData: RoutineSaveData) {
        self.exercises = exercises
        self.exercisesTools = ExercisesToolsOC()
        self.routineData = RoutineDataOC(routineSaveData: routineSaveData)
    }
    
    public func saveRoutine() {
        routineData.saveRoutine(exercises: exercises)
    }
    
    public func showRoutineSummary() {
        exercisesTools.showRoutineSummary(exercises: exercises)
    }
}
