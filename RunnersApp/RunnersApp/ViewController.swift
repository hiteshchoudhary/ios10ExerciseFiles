//
//  ViewController.swift
//  RunnersApp
//
//  Created by studio on 05/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    
    var timer = Timer()
    var time = 0
    var buttonState = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playBtn.layer.cornerRadius = 15.0
        playBtn.layer.borderWidth = 2.0
        playBtn.layer.borderColor = UIColor.white.cgColor
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playButtonTapped(_ sender: AnyObject) {
        if buttonState {
            playBtn.setTitle("Pause", for: [])
            buttonState = false
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.addToTime), userInfo: nil, repeats: true)
            
            //print("BUtton Tapped")
        } else{
            playBtn.setTitle("Play", for: [])
            buttonState = true
            
            timer.invalidate()
            
            //print("BUtton Tapped")
        }
    }
    
    
    @IBAction func resetTapped(_ sender: AnyObject) {
        
        //Reset button reset the counter to 00 but starts it ASAP
        
    }
    
    @IBAction func stopTapped(_ sender: AnyObject) {
        timer.invalidate()
        time = 0
        timeLabel.text = "00"
        
    }
    
    func addToTime() {
        time  = time + 1
        timeLabel.text = "\(time)"
    }
    
    
}






