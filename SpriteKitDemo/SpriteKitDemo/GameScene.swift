//
//  GameScene.swift
//  SpriteKitDemo
//
//  Created by Thomas Cacciatore on 5/18/20.
//  Copyright © 2020 Thomas Cacciatore. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let myFirstNode = SKNode()
    let myFirstSpriteNode = SKSpriteNode(color: UIColor.red, size: CGSize(width: 200.0, height: 200.0))
    let myFirstTexturedSpriteNode = SKSpriteNode(imageNamed: "spaceship")
    let blueBox = SKSpriteNode(color: UIColor.blue, size: CGSize(width: 100.0, height: 100.0))
    
    override func didMove(to view: SKView) {
        addChild(myFirstNode)
        
        myFirstSpriteNode.position = CGPoint(x: frame.midX, y: frame.midY)
        myFirstSpriteNode.anchorPoint = CGPoint.zero
        
        addChild(myFirstSpriteNode)
        
        myFirstTexturedSpriteNode.zPosition = 1
        myFirstTexturedSpriteNode.size = CGSize(width: 100.0, height: 100.0)
        myFirstSpriteNode.addChild(myFirstTexturedSpriteNode)
        
        blueBox.zPosition = 2
        blueBox.position = CGPoint(x: myFirstSpriteNode.size.width/2, y: myFirstSpriteNode.size.height/2)
        myFirstSpriteNode.addChild(blueBox)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /*
//        myFirstTexturedSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0))
//        blueBox.run(SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0))
        myFirstTexturedSpriteNode.run(SKAction.move(to: CGPoint(x: myFirstSpriteNode.size.width, y: myFirstSpriteNode.size.height), duration: 2.0)) {
            self.myFirstTexturedSpriteNode.position = CGPoint.zero
        }
        if !blueBox.hasActions() {
//            blueBox.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0)))
//            blueBox.run(SKAction.group([SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0), SKAction.scale(by: 0.9, duration: 2.0)]))
            blueBox.run(SKAction.sequence([SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0), SKAction.scale(by: 0.9, duration: 2.0)]))
        } else {
            blueBox.removeAllActions()
        }
 */
        if let _ = myFirstTexturedSpriteNode.action(forKey: "Rotation") {
            myFirstTexturedSpriteNode.removeAction(forKey: "Rotation")
        } else {
            myFirstTexturedSpriteNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(M_PI), duration: 2.0)), withKey: "Rotation")
        }
        
    }
    
}
