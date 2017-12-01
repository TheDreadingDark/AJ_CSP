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
    
    private lazy var address : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO: Replace with your correct links
        addresses = [
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com",
            "https://www.google.com"
        ]
    }
    
    if let splitView = splitViewController
    {
        let currentControllers = splitView.viewControllersdetailViewController = currentControllers[0] as? InternetDetailViewController
    }
    
    //MARK: Handle the internal transfer
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            let urlString = addresses[indexPath.row]
            let pageText : String
            
            if indexPath.row == 0
            {
                //TODO: Replace with your definitions - great time to use the """ operator
                pageText = "All the definitions you wrote........."
            }
            else
            {
                pageText = internetTopics[indexPath.row]
            }
            
            let controller = segue.destination as! InternetDetailViewController
            
            controller.detailAddress = urlString
            controller.detailText = pageText
            controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
            controller.navigationItem.leftItemsSupplementBackButton = true
        }
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
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
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
