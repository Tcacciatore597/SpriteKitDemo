//
//  GameViewController.swift
//  SpriteKitDemo
//
//  Created by Thomas Cacciatore on 5/18/20.
//  Copyright © 2020 Thomas Cacciatore. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            let scene = GameScene(size: view.bounds.size)
                // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
                
                // Present the scene
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
            view.showsPhysics = true
        }
    }

   
}
