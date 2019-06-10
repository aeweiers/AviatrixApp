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
    var location = ""
    
    init(aviatrixAuthor : String, currentLocation : String) {
        author = aviatrixAuthor
        location = currentLocation
    }

    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        
    }
    
    func distanceTo(target : String) -> Int {
        let data = AviatrixData()
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
