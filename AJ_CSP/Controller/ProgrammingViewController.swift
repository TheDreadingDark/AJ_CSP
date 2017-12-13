//
//  ProgrammingView.swift
//  AJ_CSP
//
//  Created by Woolsey, Adam on 10/26/17.
//  Copyright © 2017 Woolsey, Adam. All rights reserved.
//

import UIKit
import SpriteKit

class ProgrammingViewController: UIViewController
{
    //MARK: UI Components
    
    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! UIStackView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)
    }

}
