//
//  SecondViewController.swift
//  GradingScale
//
//  Created by Christopher Nady on 4/12/18.
//  Copyright © 2018 Nady Analytics, LLC. All rights reserved.
//

import UIKit

class GradeEntryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(GradeEntryViewController.dismissKeyboard))
        
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

    func showAlertSubmitPress() {
        
        // create the alert
        let alert = UIAlertController(title: "Message", message: "Grade submission is currently in beta, we plan to have an update in one month.", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func GradeEntrySubmitButton(_ sender: Any) {
        showAlertSubmitPress()
    }
    
}

