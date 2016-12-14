//
//  AddressesViewController.swift
//  RMS_v0.1
//
//  Created by MTMAC20 on 12/13/16.
//  Copyright © 2016 MTMAC19. All rights reserved.
//

import UIKit

class AddressesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var addressesTableView: UITableView!
    var addresses: [Address] = []
    
    override func viewDidLoad() {
        addressesTableView.dataSource = self
        addressesTableView.delegate = self
        
        addresses.append(Address(city: "Bandung", street: "Jln. Citarip Kulon IV, No. 200", activeInd: true))
        addresses.append(Address(city: "Bali", street: "Jalan Raya Kediri, Gang Ksatria No. 11, no 38", activeInd: false))
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return addresses.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("AddressCell", forIndexPath: indexPath) as! AddressCell
        
        let address = addresses[indexPath.row]
        cell.address = address
        
        return cell
    }
}
