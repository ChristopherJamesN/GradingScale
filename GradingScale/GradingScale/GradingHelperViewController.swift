//
//  FirstViewController.swift
//  GradingScale
//
//  Created by Christopher Nady on 4/12/18.
//  Copyright © 2018 Nady Analytics, LLC. All rights reserved.
//

import UIKit

class GradingHelperViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var TotalQuestionsTextField: UITextField!
    @IBOutlet weak var TotalQuestionsCorrectTextField: UITextField!
    @IBAction func CalculateButton(_ sender: UIButton) {
        let TotalQuestions  = Int(TotalQuestionsTextField.text!)
        let TotalQuestionsCorrect = Int(TotalQuestionsCorrectTextField.text!)
        let score = TotalQuestionsCorrect!/TotalQuestions!*100
        let scoreString = String(score)
        ScoreTextField.text = scoreString
    }
    
    @IBOutlet weak var ScoreTextField: UITextField!
}

