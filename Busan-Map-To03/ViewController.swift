//
//  ViewController.swift
//  Busan-Map-To03
//
//  Created by dit08 on 2019. 10. 18..
//  Copyright © 2019년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var contents = NSArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Busan Map Tour"
        
        let path = Bundle.main.path(forResource: "geoData", ofType: "plist")
        contents = NSArray(contentsOfFile: path!)
    }
    
    override func 


}

