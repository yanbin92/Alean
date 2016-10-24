//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        inventory.sorted(){
        //如果某个物品更为常见，则它应该比其他物品更低。
        //如果两个物品的稀有度相同，则对基值较低的物品更低。
        // 从低到高对物品排序。
            return $1.rarity.rawValue>$0.rarity.rawValue ? (true):$1.baseValue>$0.baseValue
        }
        print(inventory)
        return inventory
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"
