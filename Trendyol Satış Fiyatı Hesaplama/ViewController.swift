//
//  ViewController.swift
//  Trendyol Satış Fiyatı Hesaplama
//
//  Created by Uğur BAVUK on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstText: UITextField!
    
    @IBOutlet weak var secondText: UITextField!
    
    @IBOutlet weak var thirdText: UITextField!
    
    @IBOutlet weak var fourthText: UITextField!
    
    
    @IBOutlet weak var fiveText: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resultCliced(_ sender: Any) {
        if let firstNumber = Int(firstText.text!){
            if let secondNumber = Int(secondText.text!){
                if let thirdNumber = Int(thirdText.text!){
                    if let fourthNumber = Int(fourthText.text!){
                        if let fiveNumber = Int(fiveText.text!){
                            result = ((firstNumber/(100*secondNumber)) +  (firstNumber/(100*fourthNumber)) + firstNumber + thirdNumber + fiveNumber)
                            resultLabel.text = String(result)
                        }
                    }
                }
            }
        }
    }
    
}

