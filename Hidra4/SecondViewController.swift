//
//  SecondViewController.swift
//  Hidra4
//
//  Created by Fausto Checa on 18/10/18.
//  Copyright © 2018 ch2.fausto.com. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
   
    @IBOutlet weak var B3TextField: UITextField!
  
    
    
    
    @IBAction func calc2(_ sender: Any) {
         let B3 = Cell(name: "B3", sheet: "", value: Double(B3TextField.text!)!)
        print(B3)
        
        // persist
        Cell.saveCellsUserDefaults(cells: [B3], forKey: "second")
        
        
        
        
        
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // retrieve from persists and draw in TextField
        
        
        
        let cellB3FromUD = Cell.getCellsUserDefaults(forKey: "second")
        print("---> cellB3FromUD \(cellB3FromUD[0].value)")
        B3TextField.text = "\(cellB3FromUD[0].value)"
        
        
        
        
    }
    

}
