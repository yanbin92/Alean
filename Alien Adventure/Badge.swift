//
//  Badge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class Badge: SKSpriteNode {

    var requestType: UDRequestType
    var imageName: String
    init(requestType: UDRequestType) {
    
        self.requestType = requestType
        self.imageName = "BadgeMagenta"
        super.init(texture: SKTexture(imageNamed:imageName), color: UIColor.clear, size: CGSize(width: 48, height: 48))
    }
    
   // init(texture: SKTexture?, color: UIColor, size: CGSize) {
   //      super.init(texture: texture, color: UIColor.clear, size: CGSize(width: 48, height: 48))
   // }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
