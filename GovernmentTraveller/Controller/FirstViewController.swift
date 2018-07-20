    //
//  FirstViewController.swift
//  GovernmentTraveller
//
//  Created by Jacob Foster Davis on 14Jul18.
//  Copyright © 2018 Zero Mu, LLC. All rights reserved.
//

import UIKit
import ZMAppFoundation
import CoreData


class FirstViewController: CoreDataViewController {

    //CoreData FRC Keys
    let keyTrips = "keyTrips"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //add custom menu items to the ZMMenu
        ZMMenuItems.CustomItems.append(contentsOf: CustomMenuItems.Items)
        
        //setup CoreData
        _ = setupFetchedResultsController(frcKey: keyTrips, entityName: "Trip", sortDescriptors: [],  predicate: nil)
        
        //add a trip
        guard let fc = frcDict[keyTrips] else {
            return
        }
           
        let newTrip = Trip(entity: NSEntityDescription.entity(forEntityName: "Trip", in: stack.context)!, insertInto: fc.managedObjectContext)
        newTrip.firstDay = Date()
        newTrip.lastDay = Date.distantFuture
        newTrip.name = "A new Trip"
        stack.save()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

