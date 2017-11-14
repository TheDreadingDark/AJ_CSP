//
//  GlobalImpactView.swift
//  AJ_CSP
//
//  Created by Woolsey, Adam on 10/26/17.
//  Copyright © 2017 Woolsey, Adam. All rights reserved.
//

import UIKit

class GlobalImpactView: UIViewController
{

    @IBOutlet weak var imageFrame: UIImageView!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        imageFrame.image = UIImage(named: "Plan")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
