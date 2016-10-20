//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    /**
 打开位于主捆绑包中的 plist 文件。
 浏览 plist 文件的内容，确定哪些物品应该禁用。如果物品的名称包含“laser”一词，并且碳龄小于30，则该物品应该禁用。
 返回一个数组，其中包含所有禁用物品的 ItemID。
 
 不要忘记 — 使用字典键和字符串匹配时，必须区分字母大小写！
 */
    func bannedItems(dataFile: String) -> [Int] {
        let dataFileUrl = Bundle.main.url(forResource: dataFile, withExtension: "plist")!
        let arr = NSArray(contentsOf: dataFileUrl) as! [[String:Any]]
        
        var itemIds = [Int]()
        for item in arr {
            if let name = item["Name"] as? String,let baseValue = item["BaseValue"] as? Int , (name.contains("Laser")) && (baseValue<30){
                itemIds.append((item["ItemID"] as! Int))
            }
        }
        print (itemIds)
        return itemIds
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 6"
