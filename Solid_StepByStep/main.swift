//
//  main.swift
//  Solid_StepByStep
//
//  Created by Jose Manuel Ortiz Sanchez on 18/4/22.
//

import Foundation

let exercisesMock: [Exercise] = [
    Exercise(id: UUID(), name: "Correr en cinta", type: 2, numberOfSeries: 1, repetitions: 1, weight: 0, duration: 1800, restBetweenSeries: 0),
    Exercise(id: UUID(), name: "Press Banca", type: 1, numberOfSeries: 4, repetitions: 12, weight: 50, duration: 0, restBetweenSeries: 60),
    Exercise(id: UUID(), name: "Back Squat", type: 1, numberOfSeries: 4, repetitions: 8, weight: 100, duration: 0, restBetweenSeries: 180),
    Exercise(id: UUID(), name: "Front Squat", type: 1, numberOfSeries: 4, repetitions: 8, weight: 60, duration: 0, restBetweenSeries: 180),
    Exercise(id: UUID(), name: "Elíptica", type: 2, numberOfSeries: 1, repetitions: 1, weight: 0, duration: 1800, restBetweenSeries: 0)
]

// Routine
//let routine = Routine(exercises: exercisesMock)
//routine.showRoutineSummary()
//routine.saveRoutine()


// Routine + SRP
let routine = RoutineSRP(exercises: exercisesMock)
routine.exercisesTools.showRoutineSummary(exercises: routine.exercises)
routine.routineData.saveRoutine(exercises: routine.exercises)
