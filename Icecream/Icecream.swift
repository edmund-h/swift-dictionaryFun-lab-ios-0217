//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream",
    ]
    
    
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var people: [String] = []
        for (eachName, eachflavor) in favoriteFlavorsOfIceCream {
            if eachflavor == flavor{
                people.append(eachName)
            }
        }
        return people
    }
    
    
    
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var count = 0
        for eachflavor in favoriteFlavorsOfIceCream.values {
            if eachflavor == flavor { count += 1 }
        }
        return count
    }
    
    // 4.
   
    func flavor(forPerson name: String) -> String? {
        if let flavorOut = favoriteFlavorsOfIceCream [name]
            { return flavorOut }
        else { return nil }
    }
    
    // 5.
   
    func replace (flavor: String, forPerson name: String) -> Bool{
        if favoriteFlavorsOfIceCream[name] == nil { return false }
        else {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: name)
            return true
        }
        
    }
    
    // 6.
    
    func remove (person name: String) -> Bool{
    
        if favoriteFlavorsOfIceCream[name] == nil { return false }
        else {
            favoriteFlavorsOfIceCream.removeValue(forKey: name)
            return true
        }
    }
    
    // 7.
    
    func numberOfAttendees() -> Int {
    
        return favoriteFlavorsOfIceCream.count
    
    
    }
    
    // 8.
    
    func add (person name: String, withFlavor flavor: String) -> Bool {
        if favoriteFlavorsOfIceCream [name] == nil {
            favoriteFlavorsOfIceCream.updateValue(flavor, forKey: name)
            return true
        }
        return false
    }
    
    // 9.
    
    func attendeeList () -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var output: String = ""
        if favoriteFlavorsOfIceCream.isEmpty {
            return "There are no attendees."
        }
        for (index, name) in allNames.enumerated() {
            if let flavor = favoriteFlavorsOfIceCream[name]{
                output += "\(name) likes \(flavor)"
            }
            if  index != (favoriteFlavorsOfIceCream.count - 1){
                output += "\n"
            } 
        }
        return output
    }

}
