//
//  ViewController.swift
//  TillDeymannClient
//
//  Created by Christoph on 16.05.17.
//  Copyright © 2017 Christoph Pageler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionConnect(_ sender: UIButton) {
        TillDeymannService.shared.connect(address: "192.168.0.315", port: 1337)
    }

    @IBAction func actionWheelhouseHouseUp(_ sender: UIButton) {
        TillDeymannService.shared.wheelhouseHouseUp()
    }
}

