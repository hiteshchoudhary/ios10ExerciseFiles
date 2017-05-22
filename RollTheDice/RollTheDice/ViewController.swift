//
//  ViewController.swift
//  RollTheDice
//
//  Created by studio on 10/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rollLabel: UILabel!
    
    let numbers = ["0", "1", "2", "3", "4", "5", "6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        let randomNumber = Int(arc4random_uniform(UInt32(numbers.count)))
        
        rollLabel.text = "\(numbers[randomNumber])"
        
        
        
    }
    
    

}

