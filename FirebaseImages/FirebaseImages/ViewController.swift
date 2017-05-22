//
//  ViewController.swift
//  FirebaseImages
//
//  Created by studio on 15/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit
import Firebase


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storageRef = FIRStorage.storage().reference()
        
        
        
        let tempImage = storageRef.child("images/myImages.jpg")
        
        
        //Code to upload the image
//        let image = UIImage(named: "testImage.jpg")
//        
//        let metadata = FIRStorageMetadata()
//        metadata.contentType = "image/jpeg"
//        
//        tempImage.put(UIImageJPEGRepresentation(image!, 0.2)!, metadata: metadata) { (data, error) in
//            if error == nil {
//                print("Upload is Done")
//            } else {
//                print(error?.localizedDescription)
//            }
//        }
        
        tempImage.data(withMaxSize: 1*1024*1024) { (data, error) in
            if error == nil {
                print(data)
                self.imageView.image = UIImage(data: data!)
            }else {
                print(error?.localizedDescription)
            }
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


















