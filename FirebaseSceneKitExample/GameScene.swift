//
//  GameScene.swift
//  FirebaseSceneKitExample
//
//  Created by Maximilian Alexander on 7/19/15.
//  Copyright (c) 2015 Epoque. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override init() {
        super.init()

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
    }
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        
        addSpaceShipSprite(CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)))
        
    }
    
    func addSpaceShipSprite(position: CGPoint){
        let sprite = SKSpriteNode(imageNamed:"Spaceship")
        
        sprite.xScale = 0.2
        sprite.yScale = 0.2
        sprite.position = position
        
        
        self.addChild(sprite);
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
