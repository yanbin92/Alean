//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        var items :[UDItemRarity:Int] = [ UDItemRarity.common: 0, UDItemRarity.uncommon: 0, UDItemRarity.rare: 0, UDItemRarity.legendary: 0 ]
        for item in inventory {
            if items[item.rarity] == nil {
                items[item.rarity] = 1
            } else {
                items[item.rarity]! += 1
            }
        }
        print (items)
        return items
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
