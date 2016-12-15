//
//  LocationsViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/14/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class LocationsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var locationsTableView: UITableView!
    
    var locations : [Location] = []
    
    override func viewDidLoad() {
        locationsTableView.dataSource = self
        locationsTableView.delegate = self
    
        locations.append(Location(branchOffice: "Bali", street: "Bypass Ngurah Rai", activeInd: true))
        locations.append(Location(branchOffice: "Bandung", street: "Jl. Surya Sumantri", activeInd: true))
        locations.append(Location(branchOffice: "Yogyakarta", street: "Muja Muju", activeInd: true))
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("LocationCell", forIndexPath: indexPath) as! LocationCell
        
        let location = locations[indexPath.row]
        cell.location = location
        
        return cell
    }
}
