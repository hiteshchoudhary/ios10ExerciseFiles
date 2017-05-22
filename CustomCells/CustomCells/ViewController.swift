//
//  ViewController.swift
//  CustomCells
//
//  Created by studio on 06/10/16.
//  Copyright © 2016 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var names = ["surprizey","whity","meany","hidy","yellowy","kidy"]
    
    var images = [UIImage(named : "surprizey"),
                  UIImage(named : "whity"),
                  UIImage(named : "meany"),
                  UIImage(named : "hidy"),
                  UIImage(named : "yellowy"),
                  UIImage(named : "kidy"), ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomCell
        
        cell.photo.image = images[indexPath.row]
        cell.label.text = names[indexPath.row]
        
        return cell
        
    }
    
    


}

