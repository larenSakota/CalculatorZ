//
//  CalculationZ.swift
//  CalculatorZ
//
//  Created by Laren Sakota on 4/29/20.
//  Copyright © 2020 Laren Sakota. All rights reserved.
//

import Foundation

enum operatorFunctions {
    case add
    case subtract
    case multiply
    case divide
}

class CalculationZ {
    
    var operations: operatorFunctions = .add
//    var decimalValue: Double = 0.0
    var currentValue: Double = 0
    var operandStack = OperandStack()
    
//    struct OperandStack {
//        var items = [Double]()
//        mutating func push(_ item: Double) {
//            items.append(item)
//        }
//        mutating func pop() -> Double {
//            if items.isEmpty {
//                return 0
//            } else {
//                return items.removeLast()
//            }
//
//        }
//    }
    
    struct OperandStack {
        var items = [Double]()
        mutating func push(_ item: Double) {
            items.append(item)
        }
        mutating func pop() -> Double {
            return items.removeLast()
        }
    }
    
    class func add(numbers value1: Double, withNumbers value2: Double) -> String {
        return Double(value1 + value2).stringWithoutZeroFraction
    }
    
    class func subtract(numbers value1: Double, withNumbers value2: Double) -> String {
        return Double(value1 - value2).stringWithoutZeroFraction
    }
    
    class func multiply(numbers value1: Double, withNumbers value2: Double) -> String {
        return Double(value1 * value2).stringWithoutZeroFraction
    }
    
    class func divide(numbers value1: Double, withNumbers value2: Double) -> String {
        if value2 == Double(0) {
            print("Error")
        }
            return Double(value1 / value2).stringWithoutZeroFraction
    }

    
    class func positiveNegative(original: Double) -> String {
        let oppositeOriginal = original * Double(-1)
        return oppositeOriginal.stringWithoutZeroFraction
    }
    
    class func percent(original: Double) -> Double {
        return (original / 100)
    }
    
    func equalPressed(operand: Double) -> Double {
            currentValue = operandStack.pop()

            switch operations {
            case .add:
                currentValue = Double(CalculationZ.add(numbers: currentValue, withNumbers: operand))!
            case .subtract:
                currentValue = Double(CalculationZ.subtract(numbers: currentValue, withNumbers: operand))!
            case .divide:
                currentValue = Double(CalculationZ.divide(numbers: currentValue, withNumbers: operand))!
            case .multiply:
                currentValue = Double(CalculationZ.multiply(numbers: currentValue, withNumbers: operand))!
            }
            operandStack.push(currentValue)
            return currentValue
        }
    
    func equalAfterthought(operationInput: operatorFunctions) {
        operations = operationInput
    }
    
        func calcInput(operand: Double, operationInput: operatorFunctions) {
            if currentValue == Double(0) {
                operations = operationInput
                operandStack.push(operand)
                currentValue = operand

            } else {
                currentValue = operandStack.pop()

                switch operations {
                case .add:
                    currentValue = Double(CalculationZ.add(numbers: currentValue, withNumbers: operand))!
                case .subtract:
                    currentValue = Double(CalculationZ.subtract(numbers: currentValue, withNumbers: operand))!
                case .multiply:
                    currentValue = Double(CalculationZ.multiply(numbers: currentValue, withNumbers: operand))!
                case .divide:
                    currentValue = Double(CalculationZ.divide(numbers: currentValue, withNumbers: operand))!
                }
                operandStack.push(currentValue)
                operations = operationInput

            }
        }
    
    func clear() {
        operations = .add
        currentValue = 0
    }
    
    func divideBy1(start: Double) -> Double {
        return (start / 1)
    }
}
