//
//  MastermindProtocol.swift
//  CalculatorZ
//
//  Created by Laren Sakota on 4/25/20.
//  Copyright © 2020 Laren Sakota. All rights reserved.
//

import Foundation


enum operators {
    case add
    case subtract
    case multiply
    case divide
}

func getMastermindBrain() -> MastermindProtocol {
    return MastermindBrain()
}

protocol MastermindProtocol {
    func percent(original: Double) -> Double
    func positiveNegative(original: Double) -> String
    func clear()
    func equalPressed(operand: Double) -> Double
    func calcInput(operand: Double, operationInput: operators)
    func equalAfterthought(operationInput: operators)
}
