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
    
    private lazy var addresses : [String] = []
    
    private var detailViewController : InternetDetailViewController?
    
    private func setup() -> Void
    {
        //TODO: Replace with your correct links
        addresses = [
            "https://www.google.com",
            "https://apstudent.collegeboard.org/home",
            "http://www.canyonsdistrict.org/",
            "https://ctec.canyonsdistrict.org/",
            "https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html#//apple_ref/doc/uid/TP40014097-CH3-ID0",
            "https://twitter.com/"
        ]
        if let splitView = splitViewController
        {
            let currentControllers = splitView.viewControllers
            detailViewController = currentControllers[0] as? InternetDetailViewController
        }
    }
    
    
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Uncomment the lowing line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
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
    
    //MARK: Handle the internal transfer
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier! == "showDetail"
        {
            let urlString = addresses[IndexPath.row]
            let pageText : String
            
            if IndexPath.row == 0
            {
                //TODO: Replace with your definitions - great time to use the """ operator
                pageText =
                """
                URL: Universal Resource Locator which is a web address"
                
                TCP: Transmission Control Protocol which is a set of internet protocols allowing multiple computers to talk to each other
                
                IP: Internet Protocol which is also a set of internet protocols allowing multiple computers to talk to each other
                
                DNS: Domain Main System which is how domain names are translated to IP addresses
                """
            }
            else
            {
                pageText = internetTopics[IndexPath.row]
            }
            
            let controller = segue.destination as! InternetDetailViewController
            
            controller.detailAddress = urlString
            controller.detailText = pageText
            controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
            controller.navigationItem.leftItemsSupplementBackButton = true
        }
    }

}
