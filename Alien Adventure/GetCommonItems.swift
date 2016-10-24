//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func getCommonItems(inventory: [UDItem]) -> [UDItem] {
        //返回 UDItem 数组，其中仅包含属于原始库存，并罕见度为 Common 的物品。
        var commonItems = inventory.filter {
            $0.rarity==UDItemRarity.common
        }
        //let cast = ["Vivien", "Marlon", "Kim", "Karl"]
        //let shortNames = cast.filter { $0.characters.count < 5 }
        //    print(shortNames)
        ///     // Prints "["Kim", "Karl"]"
        return commonItems
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
