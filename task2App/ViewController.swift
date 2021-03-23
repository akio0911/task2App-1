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
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!

    var result: Double = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pressButton(_ sender: Any) {
        let number1: Double = Double(textField1.text!) ?? 0.0
        let number2: Double = Double(textField2.text!) ?? 0.0
        let Index = segmentedControl.selectedSegmentIndex

        if Index == 0 {
            result = number1 + number2
        }
        else if Index == 1 {
            result = number1 - number2
        }
        else if Index == 2 {
            result = number1 * number2
        }
        else if Index == 3 {
            if number2 == 0 {
                textField2.text = "0以外を入力してください"
                return
            }else {
                result = number1 / number2
            }
        }
        resultLabel.text = String(result)
    }
}

