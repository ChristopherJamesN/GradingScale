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
    
    func showAlertFieldEmpty() {
        
        // create the alert
        let alert = UIAlertController(title: "Reminder", message: "Please fill in both fields to calculate a score.", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func showAlertCorrectQuestionsGreaterThanTotalQuestions() {
        
        // create the alert
        let alert = UIAlertController(title: "Note", message: "The number of correct questions entered is greater than the total questions asked.", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func showAlertInvalidNumber() {
        // create the alert
        let alert = UIAlertController(title: "Note", message: "Please enter a valid number of questions for the number of questions correct.", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }

    @IBOutlet weak var TotalQuestionsTextField: UITextField!
    @IBOutlet weak var TotalQuestionsCorrectTextField: UITextField!
    @IBAction func CalculateButton(_ sender: UIButton) {
        if TotalQuestionsTextField.text! != "" && TotalQuestionsCorrectTextField.text! != "" {
            let TotalQuestions  = Double(TotalQuestionsTextField.text!)
            let TotalQuestionsCorrect = Double(TotalQuestionsCorrectTextField.text!)
            if(TotalQuestionsCorrect == nil) {
                showAlertInvalidNumber()
                return
            }
            if Int(TotalQuestionsCorrect!) > Int(TotalQuestions!){
                showAlertCorrectQuestionsGreaterThanTotalQuestions()
            }
            let score = TotalQuestionsCorrect!/TotalQuestions!*100
            let scoreString = String(score)
            ScoreTextField.text = scoreString
        }
        else {
            showAlertFieldEmpty()
        }
    }
    
    @IBOutlet weak var ScoreTextField: UITextField!
}

