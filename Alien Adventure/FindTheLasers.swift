//
//  FindTheLasers.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func findTheLasers() -> ((UDItem) -> Bool) {
        
        func containsLaser(item: UDItem) -> Bool {
            //外星人表示如果物品的名称包含单词“laser”，该方法应返回 True（否则为 False）
            if(item.name.lowercased().contains("laser")){
                return true
            }
            return false
        }
        
        return containsLaser
    }
    
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 2"
