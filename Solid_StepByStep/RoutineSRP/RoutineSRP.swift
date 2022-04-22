//
//  RoutineSRP.swift
//  Solid_StepByStep
//
//  Created by Jose Manuel Ortiz Sanchez on 22/4/22.
//

import Foundation

final class RoutineSRP {
    
    public var exercises: [Exercise]
    public var exercisesTools: ExercisesTools
    public var routineData: RoutineData
    
    init(exercises: [Exercise]) {
        self.exercises = exercises
        self.exercisesTools = ExercisesTools()
        self.routineData = RoutineData()
    }
    
    
    // EXAMPLE OF: FACADE PATTERN
}
