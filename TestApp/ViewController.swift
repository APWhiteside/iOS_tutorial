//
//  ViewController.swift
//  TestApp
//
//  Created by Adam Whiteside on 09/12/2015.
//  Copyright © 2015 Adam Whiteside. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var nameTextField: UITextField!;
    @IBOutlet weak var mealNameLabel: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
    }
    
    //MARK: Actions

    @IBAction func setDefaultLabelText(sender: UIButton) {
            mealNameLabel.text = "Default Text";
    }
    
    //MARK: UITextFieldDeligate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text;
    }

}

