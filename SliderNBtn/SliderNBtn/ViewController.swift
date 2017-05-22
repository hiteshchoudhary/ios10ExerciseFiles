//
//  ViewController.swift
//  SliderNBtn
//
//  Created by studio on 04/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    

    @IBAction func sliderMoved(_ sender: AnyObject) {
        label.text = "\(slider.value)"
    }

}

