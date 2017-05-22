//
//  ViewController.swift
//  FirebaseTest
//
//  Created by studio on 14/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase


class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var errorMessage: UILabel!
    
    @IBOutlet weak var signup: UIButton!
    
    //var databaseReference = FIRDatabase.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func signUpTapped(_ sender: AnyObject) {
    
        FIRAuth.auth()?.createUser(withEmail: email.text!, password: password.text!, completion: { (user, error) in
            if error != nil {
                self.errorMessage.text = error?.localizedDescription
            }
            else {
                //Print a message for success
                self.errorMessage.text = "Registered Successfully"
                //SignIn the user
                
                FIRAuth.auth()?.signIn(withEmail: self.email.text!, password: self.password.text!, completion: { (user, error) in
                    if error == nil {
                        //Make an entry in database
                        FIRDatabase.database().reference().child("users").child(user!.uid).child("email").setValue(self.email.text!)
                        //perform a segue to success
                        self.performSegue(withIdentifier: "successSegue", sender: nil)
                    }
                })
                
                
            }
        })
        
        
        
        
    }

}


















