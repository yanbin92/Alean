//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        //通过库存迭代，查找起源星球匹配星球参数的所有物品。使用 UDItem 的 historicalData 属性以及键“PlanetOfOrigin”。
      //  对于起源星球匹配星球参数的物品，确定哪个物品最早。使用 UDItem 的 historicalData 属性以及键“CarbonAge”。
        var items = itemsFromPlanet(inventory: inventory, planet: planet)
        if items.count != 0{
            if let first_item:UDItem = (items[0]){
                var find_item = first_item
                for item in items {
                    if let time=item.historicalData["CarbonAge"] as? Int , time > (find_item.historicalData["CarbonAge"] as? Int)! {
                  
                            find_item=item
                        }
                }
                return find_item
            }
        }
        else{
            return nil
        }
      
        
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
