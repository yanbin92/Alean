//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        var dictiony = [UDItem:Int]()
        var uditems = [UDItem]()
        inventory.map { (item) -> Void in
            dictiony[item]==nil ? (dictiony[item] = 1):
            (dictiony[item]!+=1)
        }
        dictiony.map { (key: UDItem, value: Int) -> Void in
            if(value==1){
                uditems.append(key)
            }
        }
        return uditems
    }
    
}
