//
//  FirstViewController.swift
//  GovernmentTraveller
//
//  Created by Jacob Foster Davis on 14Jul18.
//  Copyright © 2018 Zero Mu, LLC. All rights reserved.
//

import UIKit
import ZMAppFoundation

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //add custom menu items to the ZMMenu
        ZMMenuItems.CustomItems.append(contentsOf: CustomMenuItems.Items)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

