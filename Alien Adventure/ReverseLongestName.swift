//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        var longest_name:String = ""
           // longest_name = inventory[0].name
            for uditem in inventory{
            if(uditem.name.characters.count>longest_name.characters.count){
                longest_name = uditem.name
                }
            }
            return String(longest_name.characters.reversed())
           }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
