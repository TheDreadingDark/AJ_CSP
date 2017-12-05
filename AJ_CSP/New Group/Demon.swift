//
//  Demon.swift
//  AJ_CSP
//
//  Created by Woolsey, Adam on 11/20/17.
//  Copyright © 2017 Woolsey, Adam. All rights reserved.
//

import UIKit

public class Demon : Punchable
{
    //MARK: Punchable data member
    public var punchState: Bool
    
    public init()
    {
        self.punchState = false
    }
    
    //MARK:- Punchable methods
    public func punch() -> Void
    {
        print("I was punched")
        punchState = true
    }
    
    public func wasPunched() -> Bool
    {
        if(punchState)
        {
            print("Punched")
        }
        else
        {
            print("Still")
        }
        return punchState
    }
}

