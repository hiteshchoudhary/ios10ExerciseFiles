//
//  ViewController.swift
//  JsonTest
//
//  Created by studio on 12/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var firstName = ""
    var idValue = ""
    var city = ""
    var gender = ""
    var phone = ""
    var postCode = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let myURL = "https://randomuser.me/api/"
        
        Alamofire.request(myURL).responseJSON { response in
//            print(response.request)  // original URL request
//            print(response.response) // HTTP URL response
//            print(response.data)     // server data
//            print(response.result)   // result of response serialization
//            
//            if let JSON = response.result.value {
//                print("JSON: \(JSON)")
//            }
            
            print(response)
            let result = response.result
            //Get data and print it
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                if let innerDictR = dict["results"]![0] as? Dictionary<String, AnyObject>{
                    if let webGender = innerDictR["gender"] as? String {
                        self.gender = webGender
                        print("###\(self.gender)")
                    }
                }
            }
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                if let innerDictR = dict["results"]![0] as? Dictionary<String, AnyObject>{
                    if let webPhone = innerDictR["phone"] as? String {
                        self.phone = webPhone
                        print("###\(self.phone)")
                    }
                }
            }
            
            
            if let dict = result.value as? Dictionary<String, AnyObject>{
                if let innerDictR = dict["results"]![0] as? Dictionary<String, AnyObject>{
                    if let nameD = innerDictR["name"] as? Dictionary<String, AnyObject> {
                        print(nameD)
                        if let webFirst = nameD["first"] as? String {
                            self.firstName = webFirst.capitalized
                            print(self.firstName)
                        }
                    }
                    
                }
            }
         
        }
        
        
        
    }

    


}

