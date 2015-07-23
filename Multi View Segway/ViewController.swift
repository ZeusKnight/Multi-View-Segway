//
//  ViewController.swift
//  Multi View Segway
//
//  Created by mocha on 7/21/15.
//  Copyright (c) 2015 mocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var userInput: UITextField!
    @IBOutlet var textOutput: UILabel!

    @IBAction func buttonClick(sender: AnyObject) {
        if(userInput.text != nil && !userInput.text.isEmpty) {
            textOutput.text = userInput.text;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.userInput.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true);
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
}

