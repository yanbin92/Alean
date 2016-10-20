//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
   
    func planetData(dataFile: String) -> String {
        let dataJsonUrl = Bundle.main.url(forResource: dataFile, withExtension: "json")!
        let data_json = try! Data(contentsOf: dataJsonUrl)
        
        var dictionary_arrays: [[String:Any]]!
        do{
           dictionary_arrays = try! JSONSerialization.jsonObject(with: data_json, options: JSONSerialization.ReadingOptions()) as? [[String:Any]]
        }
        var max_Name: String = ""
        var max: Int = 0
        
        for item in dictionary_arrays {
            if let common = item["CommonItemsDetected"] as? Int ,
            let uncommon = item["UncommonItemsDetected"] as? Int ,
            let rareItemsDetected = item["RareItemsDetected"] as? Int ,
            let legendaryItemsDetected = item["LegendaryItemsDetected"] as? Int  {
                let sum: Int = common + (uncommon*2) + (rareItemsDetected*3) + (legendaryItemsDetected*4)
                if(max<sum){
                    max = sum
                    max_Name = (item["Name"] as! String)
                }
            }
    
        }
        return max_Name
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 7"
