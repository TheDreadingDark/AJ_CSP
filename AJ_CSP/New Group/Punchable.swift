//
//  Punchable.swift
//  AJ_CSP
//
//  Created by Woolsey, Adam on 11/20/17.
//  Copyright © 2017 Woolsey, Adam. All rights reserved.
//

import Foundation
public protocol Punchable
{
    var punchState : Bool {get set}
    func punch() -> Void
    func wasPunched() -> Bool
}
