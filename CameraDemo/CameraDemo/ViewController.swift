//
//  ViewController.swift
//  CameraDemo
//
//  Created by studio on 07/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
    }

    
       
    @IBAction func cameraTapped(_ sender: AnyObject) {
     
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
      
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage]
        
        imageView.image = image as! UIImage?
        
        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    
}

