//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        //通过 requestTypes迭代并检查是否有执行了每个请求类型的徽章。
        //如果每个 requestType 具有相应的徽章，则返回 True。否则，返回 False。
        for requestType in requestTypes {
            var isFind :Bool = false
            
            for badge in badges{//如果每个 requestType 具有相应的徽章，则返回 True。否则，返回 False。
            
                if(badge.requestType == requestType){
                    isFind=true
                }
            }
            //某个requeest type 没有对应badge  return false
            if(!isFind){
               return false
            }
        }
        
        return true
    }
    
}
