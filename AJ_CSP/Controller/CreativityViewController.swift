//
//  CreativityView.swift
//  AJ_CSP
//
//  Created by Woolsey, Adam on 10/26/17.
//  Copyright © 2017 Woolsey, Adam. All rights reserved.
//

import UIKit

public class CreativityViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout
{
    private let reuseIdentifier = "artIdentifier"
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRow : CGFloat = 3
    
    private lazy var artSelection : [UIImage?] =
    {
        return [
            UIImage(named: "cute rammus"),
            UIImage(named: "cute rammus"),
            UIImage(named: "cute rammus"),
            UIImage(named: "cute rammus"),
            UIImage(named: "Block Code"),
            UIImage(named: "ByteCode"),
            UIImage(named: "Java Sample"),
            UIImage(named: "javaSample"),
            UIImage(named: "nuclear energy"),
            UIImage(named: "Nuclear Power Plan"),
            UIImage(named: "swiftSample")
        ]
    }()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
