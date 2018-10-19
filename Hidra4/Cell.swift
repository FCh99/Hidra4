//
//  Cell.swift
//  Hidra4
//
//  Created by Fausto Checa on 18/10/18.
//  Copyright © 2018 ch2.fausto.com. All rights reserved.
//

import Foundation

struct Cell: Codable {
    
    var name: String = ""
    var sheet: String = ""
    var value: Double = 0
    
    init(name: String, sheet: String, value: Double) {
        self.name = name
        self.sheet = sheet
        self.value = value
    }
   
    static func saveCellsUserDefaults(cells: [Cell], forKey: String)  {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(cells) {
            let defaults = UserDefaults.standard
            defaults.set(encoded, forKey: forKey)
        }
    }
    
    
    static func getCellsUserDefaults(forKey: String)-> [Cell] {
        var cells = [Cell]()
        let decoder = JSONDecoder()
        if let cellData = UserDefaults.standard.data(forKey: forKey) {
            if let cellX = try? decoder.decode([Cell].self, from: cellData) {
                cells = cellX
                return cellX
            }
        }
        return cells
    }
    
    
}
