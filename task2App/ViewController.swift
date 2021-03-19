//
//  ViewController.swift
//  task2App
//
//  Created by yasudamasato on 2021/03/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!

    var result: Double = 0.0

    @IBAction func selectOperator(_ sender: UISegmentedControl) {

        let number1: Double = Double(textField1.text!) ?? 0
        let number2: Double = Double(textField2.text!) ?? 0

        if sender.selectedSegmentIndex == 0 {
            result = number1 + number2
        }
        else if sender.selectedSegmentIndex == 1 {
            result = number1 - number2
        }
        else if sender.selectedSegmentIndex == 2 {
            result = number1 * number2
        }
        else if sender.selectedSegmentIndex == 3 {
            if number2 == 0 {
                textField2.text = "1以上を入力してください"
                return
            }else {
                result = number1 / number2
            }
        }
    }

    @IBAction func pressButton(_ sender: Any) {
        resultLabel.text = String(result)

    }
}

