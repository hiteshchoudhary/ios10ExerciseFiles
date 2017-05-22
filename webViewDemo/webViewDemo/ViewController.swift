//
//  ViewController.swift
//  webViewDemo
//
//  Created by studio on 06/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        let url = URL(string: "https://www.udemy.com/courses/")!
//        webView.loadRequest(URLRequest(url: url))
        
        
        //You will never do things like this ever
        //CoCoPods are here now!
        if let url = URL(string: "https://www.udemy.com/courses/"){
            
            let request = NSMutableURLRequest(url: url)
            
            let job = URLSession.shared.dataTask(with: request as URLRequest) {
                result, response, error in
                
                if error != nil {
                    print(error)
                } else {
                    if let data = result {
                        let actualData = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                        
                        print(actualData)
                    }
                }
                
            }
            
            job.resume()
            
        }
        
        print("hello world")
        
    }

    
    
    

}

