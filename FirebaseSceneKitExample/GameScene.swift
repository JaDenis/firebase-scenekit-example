//
//  GameScene.swift
//  FirebaseSceneKitExample
//
//  Created by Maximilian Alexander on 7/19/15.
//  Copyright (c) 2015 Epoque. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var playerA : SKSpriteNode?
    var playerB : SKSpriteNode?
    var currentPlayer = "A"

    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = UIColor.blackColor()
        
        playerA = addSpaceShipSprite("spaceship_red" , position: CGPoint(x:CGRectGetMidX(self.frame) - 100, y:CGRectGetMinY(self.frame) + 100))
        playerB = addSpaceShipSprite("spaceship_blue", position: CGPoint(x:CGRectGetMidX(self.frame) + 100, y:CGRectGetMinY(self.frame) + 100))
    }
    
    func addSpaceShipSprite(imageName: String, position: CGPoint) -> SKSpriteNode {
        let sprite = SKSpriteNode(imageNamed:imageName)
        sprite.xScale = 0.2
        sprite.yScale = 0.2
        sprite.position = position
        self.addChild(sprite)
        return sprite;
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        for touch in (touches as! Set<UITouch>) {
            let touchLocation = touch.locationInNode(self)
            var directionFactor : CGFloat
            if (touchLocation.x <= CGRectGetMidX(self.frame)){
                directionFactor = -10.0;
            } else{
                directionFactor = 10.0;
            }
            playerA?.position = CGPointMake(playerA!.position.x + directionFactor, playerA!.position.y)
        }
    }
    
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
