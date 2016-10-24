//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: (UDItem) throws -> Void) -> [UDPolicingError:Int] {
        var dictionary : [UDPolicingError:Int] = [
            .itemFromCunia:0,
            .nameContainsLaser:0,
            .valueLessThan10:0,
        ]
        for uditem in inventory {
            do{
                try policingFilter(uditem)
            }catch UDPolicingError.itemFromCunia{
                //dictionary[.itemFromCunia]==nil ?(dictionary[.itemFromCunia]=1):
                    dictionary[.itemFromCunia]!+=1
            }catch UDPolicingError.nameContainsLaser{
              
               // dictionary[.nameContainsLaser]==nil ?(dictionary[.nameContainsLaser]=1):
                    dictionary[.nameContainsLaser]!+=1
            }catch UDPolicingError.valueLessThan10{
               // dictionary[.valueLessThan10]==nil ?(dictionary[.valueLessThan10]=1):
                    dictionary[.valueLessThan10]!+=1
            }catch{
                
            }
          
        }
          print(dictionary)
        return dictionary
    }
    
    func policingFilter(item: UDItem) throws -> Void {
        if item.name.lowercased().contains("laser") {
            throw UDPolicingError.nameContainsLaser
        }
        
        if item.historicalData["PlanetOfOrigin"] as? String == "Cunia" {
            throw UDPolicingError.itemFromCunia
        }
        
        if item.baseValue < 10 {
            throw UDPolicingError.valueLessThan10
        }
    }
}

// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 1"
