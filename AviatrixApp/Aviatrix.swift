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
    var distanceTraveled = 0.0
    var maxFuel = 5000.0
    var fuelLevel = 0.0
    var milesPerGallon = 0.4
    
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
      
       
        let data = AviatrixData()
        distanceTraveled += data.knownDistances[location]![destination]!
        fuelLevel = maxFuel - (distanceTraveled/milesPerGallon)
        
        location = destination
    }
    
    func distanceTo(target : String) -> Double {
        let data = AviatrixData()
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
