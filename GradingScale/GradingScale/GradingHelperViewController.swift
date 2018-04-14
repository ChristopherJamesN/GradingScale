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
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(GradingHelperViewController.dismissKeyboard))
        
        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false
        
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }

    @IBOutlet weak var TotalQuestionsTextField: UITextField!
    @IBOutlet weak var TotalQuestionsCorrectTextField: UITextField!
    @IBAction func CalculateButton(_ sender: UIButton) {
        let TotalQuestions  = Double(TotalQuestionsTextField.text!)
        let TotalQuestionsCorrect = Double(TotalQuestionsCorrectTextField.text!)
        let score = TotalQuestionsCorrect!/TotalQuestions!*100
        let scoreString = String(score)
        ScoreTextField.text = scoreString
    }
    
    @IBOutlet weak var ScoreTextField: UITextField!
}

