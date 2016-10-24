//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
       let newUditems = inventory.map { (item) -> UDItem in
            var uditem:UDItem = UDItem(item)
            uditem.baseValue+=100
            return uditem

        }
      //  inventory.map(){
            //copy
       //     var uditem:UDItem = UDItem($0)
         //   uditem.baseValue+=100
        //    return uditem
      //  }
        print(newUditems)
        //let cast = ["Vivien", "Marlon", "Kim", "Karl"]
//        let lowercaseNames = cast.map { $0.lowercaseString }
        return newUditems
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 4"
