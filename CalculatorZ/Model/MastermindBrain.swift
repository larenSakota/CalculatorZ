//
//  MastermindBrain.swift
//  CalculatorZ
//
//  Created by Laren Sakota on 4/27/20.
//  Copyright © 2020 Laren Sakota. All rights reserved.
//

import Foundation

class MastermindBrain: MastermindProtocol {
    
    var currentValue: Double = 0
    var operation: operators = .add
    func clear() {
        operation = .add
        currentValue = 0
    }
    func equalAfterthought(operationInput: operators) {
        operation = operationInput
    }
    func equalPressed(operand: Double) -> Double {
        currentValue = operandStack.pop()
        switch operation {
        case .add:
            currentValue = add(operand1: currentValue, operand2: operand)
        case .subtract:
            currentValue = subtract(operand1: currentValue, operand2: operand)
        case .divide:
            currentValue = division(operand1: currentValue, operand2: operand)
        case .multiply:
            currentValue = multiply(operand1: currentValue, operand2: operand)
        }
        operandStack.push(currentValue)
        return currentValue
    }
    struct OperandStack {
        var items = [Double]()
        mutating func push(_ item: Double) {
            items.append(item)
        }
        mutating func pop() -> Double {
            if items.isEmpty {
                return 0
            } else {
                return items.removeLast()
            }
            
        }
    }
    var operandStack = OperandStack()
    func percent(original: Double) -> Double {
        return (original/100)
    }
    func positiveNegative(original: Double) -> String {
        let original2 = original * Double(-1)
        return original2.stringWithoutZeroFraction
    }
    func add(operand1: Double, operand2: Double) -> Double {
        return operand2 + operand1
    }
    func subtract(operand1: Double, operand2: Double) -> Double {
        return operand1 - operand2
    }
    func multiply(operand1: Double, operand2: Double) -> Double {
        return operand2 * operand1
    }
    func division(operand1: Double, operand2: Double) -> Double {
        if operand2 == Double(0) {
            print("Error")
        }
        return operand1 / operand2
    }
    func calcInput(operand: Double, operationInput: operators) {
        
        if currentValue == Double(0) {
            operation = operationInput
            operandStack.push(operand)
            currentValue = operand

        } else {
            currentValue = operandStack.pop()
            switch operation {
            case .add:
                currentValue = add(operand1: currentValue, operand2: operand)
            case .subtract:
                currentValue = subtract(operand1: currentValue, operand2: operand)
            case .multiply:
                currentValue = multiply(operand1: currentValue, operand2: operand)
            case .divide:
                currentValue = division(operand1: currentValue, operand2: operand)
            }
            operandStack.push(currentValue)
            operation = operationInput
        }
    }
}
