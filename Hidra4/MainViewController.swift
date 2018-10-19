//
//  ViewController.swift
//  Hidra4
//
//  Created by Fausto Checa on 18/10/18.
//  Copyright © 2018 ch2.fausto.com. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    
    @IBOutlet weak var A3TextField: UITextField!
    
    @IBAction func calc(_ sender: Any) {
        let A3 = Cell(name: "A3", sheet: "", value: Double(A3TextField.text!)!)
        print(A3)
        
        Cell.saveCellsUserDefaults(cells: [A3], forKey: "main")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
       
        
    
    }
}

