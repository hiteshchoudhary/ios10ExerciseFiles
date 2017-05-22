//
//  ViewController.swift
//  CoffeeApp
//
//  Created by studio on 03/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var payPrice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputText.layer.cornerRadius = 15.0
        
        //Additional code to dismiss keyboard
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }

    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func calculateTapped(_ sender: AnyObject) {
        
        if inputText.text == "" {
            errorLabel.text = "Enter value in Box"
        } else {
            let input = Double(inputText.text!)
            
            payPrice.text = "$ \(input! * 5.0)"
            
            //Additional code to dismiss keyboard

            dismissKeyboard()
            
            
        }
        
        
        
    }
    
    
}

