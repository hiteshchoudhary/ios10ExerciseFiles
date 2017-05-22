//
//  ViewController.swift
//  AudioRecorderTest
//
//  Created by studio on 11/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {

    //Global variables for AV
    var player : AVAudioPlayer?
    var recorder : AVAudioRecorder? = nil
    //URL to save audio file
    var audioURL : URL?
    
    
    
    @IBOutlet weak var recordLabel: UIButton!
   
    @IBOutlet weak var playLabel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //Call setting function here.
        audioSettings()
    }

    @IBAction func recordPressed(_ sender: AnyObject) {
        
        if recorder!.isRecording {
            recorder!.stop()
            recordLabel.setTitle("Record", for: [])
        }
        else {
            recorder!.record()
            recordLabel.setTitle("Stop", for: [])
        }
        
    }
   
    @IBAction func playPressed(_ sender: AnyObject) {
        
        do {
            try player = AVAudioPlayer(contentsOf: audioURL!)
            player?.play()
        } catch  {
            print("Problem in playing audio")
        }
        
    }

    
    func audioSettings() {
        
        do {
            
            //Create an audio session
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
            try session.overrideOutputAudioPort(.speaker)
            try session.setActive(true)
            
            
            //Store data at some location: URL
            let path : String = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask , true).first!
            let pathAttributes = [path, "myAudio.m4a"]
            audioURL = NSURL.fileURL(withPathComponents: pathAttributes)
            
            //Attributes setting: FORMAT, SAMPLERATE, CHANNEL
            
            var settings : [String: AnyObject] = [:]
            settings[AVFormatIDKey] = Int(kAudioFormatMPEG4AAC) as AnyObject?
            settings[AVSampleRateKey] = 44100.0 as AnyObject?
            settings[AVNumberOfChannelsKey] = 2 as AnyObject?
            
            
            //create recorder object
            recorder = try AVAudioRecorder(url: audioURL!, settings: settings)
            recorder!.prepareToRecord()
      
            
        } catch let error as NSError {
            print(error)
        
        }
        
    }
    
    
}











