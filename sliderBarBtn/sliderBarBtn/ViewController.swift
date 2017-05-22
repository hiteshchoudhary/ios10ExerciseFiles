//
//  ViewController.swift
//  sliderBarBtn
//
//  Created by studio on 05/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }

    @IBAction func sliderMoved(_ sender: AnyObject) {
        label.text = "\(slider.value)"
    }
    
}

