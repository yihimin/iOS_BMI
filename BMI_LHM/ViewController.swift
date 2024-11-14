//
//  ViewController.swift
//  BMI_LHM
//
//  Created by Dahyun on 11/7/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtHeight: UITextField!
    @IBOutlet weak var txtWeight: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBAction func calcBmi(_ sender: UIButton) {
        let height = Double(txtHeight.text!)!
        let weight = Double(txtWeight.text!)!
        print(height,weight)
        let bmi = weight/(height*height*0.0001)
        let shortenedBmi = String(format: "%.1f", bmi)
        var body = ""
        if bmi >= 40 {
            body = "3단계 비만"
        } else if bmi >= 30 && bmi < 40 {
            body = "2단계 비만"
        } else if bmi >= 25 && bmi < 30 {
            body = "1단계 비만"
        } else if bmi >= 18.5 && bmi < 25 {
            body = "정상"
        } else {
            body = "저체중"
        }
        print("BMI:\(shortenedBmi), 판정:\(body)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

