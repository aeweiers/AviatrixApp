//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//


import Foundation

class Aviatrix {
    
    var running = false
    var author = ""
 
    
    init(aviatrixAuthor : String) {
        author = aviatrixAuthor
    }
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        
    }
    
    func distanceTo(target : String) {
        let data = AviatrixData()
        return data.knownDistances["St. Louis"]!["Phoenix"]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
