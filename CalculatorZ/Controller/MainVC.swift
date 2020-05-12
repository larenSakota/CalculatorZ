//
//  ViewController.swift
//  CalculatorZ
//
//  Created by Laren Sakota on 4/22/20.
//  Copyright © 2020 Laren Sakota. All rights reserved.
//

import UIKit
import Foundation

class MainVC: UIViewController {

    
    @IBOutlet weak var clearBtn: stdFunctionsBtnStyle!
      
    @IBOutlet weak var historyLBL: UILabel!
    
    var answer = ""
    var operation: operators = .add
    var percent: Double = 0
    var calcBrain = getMastermindBrain()
    
    @IBOutlet var resultsLBL: UILabel!

    func setClearBtnTitle() {
        if resultsLBL.text != "0" {
            clearBtn.setTitle("C", for: .normal)
        } else {
            clearBtn.setTitle("AC", for: .normal)
            historyLBL.text = " "
        }
    }
    
//    func setHistoryLBL() {
//        let result = calcBrain.equalPressed(operand: Double(resultsLBL.text!)!).stringWithoutZeroFraction
//
//        historyLBL.text = resultsLBL.text
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLBL.text = "0"
        setClearBtnTitle()
//        setHistoryLBL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func percent_Sign(_ sender: UIButton, forEvent event: UIEvent) {
        let returnValue = calcBrain.percent(original: Double(resultsLBL.text!)!)
        resultsLBL.text = String(returnValue)
        setClearBtnTitle()
    }
    @IBAction func decimalPoint(_ sender: UIButton, forEvent event: UIEvent) {
        if resultsLBL.text!.contains(".") {
            resultsLBL.text! = (resultsLBL.text!)
        } else {
            resultsLBL.text! = (resultsLBL.text! + ".")
        }
        setClearBtnTitle()
    }
    @IBAction func positiveNegative(_ sender: UIButton, forEvent event: UIEvent) {
        let returnValue = calcBrain.positiveNegative(original: Double(resultsLBL.text!)!)
        resultsLBL.text = String(returnValue)
        setClearBtnTitle()
    }
    @IBAction func clear(_ sender: UIButton, forEvent event: UIEvent) {
        resultsLBL.text = "0"
        answer = "";
        operation = .add;
        percent = 0;
        calcBrain.clear()
        setClearBtnTitle()
    }
    @IBAction func operator_Key(_ sender: UIButton, forEvent event: UIEvent) {
        let operand: Double = Double(resultsLBL.text!)!
        if answer == ""{
            switch sender.tag {
            case 10:
                operation = .add
            case 11:
                operation = .subtract
            case 12:
                operation = .multiply
            case 13:
                operation = .divide
            default:
                sleep(5)
                exit(0)
            }
            calcBrain.calcInput(operand: operand, operationInput: operation)
            resultsLBL.text = "0"
        } else {
            switch sender.tag {
            case 10:
                operation = .add
            case 11:
                operation = .subtract
            case 12:
                operation = .multiply
            case 13:
                operation = .divide
            default:
                sleep(5)
                exit(0)
            }
            calcBrain.equalAfterthought(operationInput: operation)
            answer = ""
            resultsLBL.text = "0"
        }
    }
    @IBAction func numbers(_ sender: UIButton, forEvent event: UIEvent) {

        resultsLBL.text! += String(sender.tag)
        setClearBtnTitle()
//        setHistoryLBL()
    }
    
    @IBAction func equalPressed(_ sender: UIButton, forEvent event: UIEvent) {
        answer = calcBrain.equalPressed(operand: Double(resultsLBL.text!)!).stringWithoutZeroFraction
        resultsLBL.text = answer
        setClearBtnTitle()
//        setHistoryLBL()
    }
    

//    func removeZero(value1: Double) -> String {
//        let result = value1 * 1
//        return result.stringWithoutZeroFraction
//    }
}

