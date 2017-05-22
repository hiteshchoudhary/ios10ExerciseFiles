//
//  addMeVC.swift
//  HubbyList
//
//  Created by studio on 06/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class addMeVC: UIViewController {

    @IBOutlet weak var today: UISwitch!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func sendToHubbyTapped(_ sender: AnyObject) {
        
        let guest = UIApplication.shared.delegate as! AppDelegate
        let context = guest.persistentContainer.viewContext
        
        let task = Task(context: context)
        
        if let name = textField.text {
            task.name = name
        }
        
        task.today = today.isOn
        
        //save the data to core data
        
        guest.saveContext()
        
        navigationController!.popToRootViewController(animated: true)
        
    }
   

    
}










