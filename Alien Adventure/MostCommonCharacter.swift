//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {

    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var char = Character("i")
        var dictionarys = [Character:Int]()
        var max = 0
        if(inventory.count != 0){
            for uditem in inventory {
        
                if let name = uditem.name.lowercased() as? String{
                    for character in name.characters {
                        if(dictionarys[character] == nil) {
                            dictionarys[character] = 1
                        }else{
                            dictionarys[character]! += 1
                            if(dictionarys[character]!>max){
                                max=dictionarys[character]!
                                char=character
                            }
                        }
                    }
                
                }
            
        }
            //print(dictionarys)
            return char
        }else{
            return nil
        }
       
    }
}
