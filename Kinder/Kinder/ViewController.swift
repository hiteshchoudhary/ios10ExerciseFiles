//
//  ViewController.swift
//  Kinder
//
//  Created by studio on 10/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swipelabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Code for Right Swipe
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped))
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(rightSwipe)
        
        
        //Code for left Swift
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped))
        
        leftSwipe.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(leftSwipe)
        
    }

    func swiped(gesture: UISwipeGestureRecognizer) {
        
        if let swipeDetected = gesture as? UISwipeGestureRecognizer {
            
            switch swipeDetected.direction {
            case UISwipeGestureRecognizerDirection.left:
                swipelabel.text = "💔"
            case UISwipeGestureRecognizerDirection.right:
                swipelabel.text = "❤️"
            default:
                break
            }
            
            
        }
        
        
    }
    
    
    

}

