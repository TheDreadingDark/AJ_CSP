//
//  InternetView.swift
//  AJ_CSP
//
//  Created by Woolsey, Adam on 10/26/17.
//  Copyright © 2017 Woolsey, Adam. All rights reserved.
//

import UIKit

public class InternetMasterViewController : UITableViewController
{

    private (set) lazy var internetTopics : [String] =
    {
        return [
            "Definitions",
            "CSP",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Uncomment the lowing line to preserve selection between presentations
        self.clearSelectionOnViewWillAppear = false
    }

    //MARK: - Table view data source
   
    override public func numberOfSections(in tableView: UITableView) -> Int
    {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    ovveride public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }

}
