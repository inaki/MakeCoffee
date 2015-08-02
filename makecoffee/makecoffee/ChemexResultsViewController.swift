//
//  ChemexResultsViewController.swift
//  makecoffee
//
//  Created by Imanol Aranzadi on 7/24/15.
//  Copyright (c) 2015 fishorse. All rights reserved.
//

import UIKit

class ChemexResultsViewController: UIViewController {
    

    @IBOutlet weak var OuncesRequestedLabel: UILabel!
    @IBOutlet weak var makeInfoLabel: UILabel!
    var makeInfoPassed:String!
    var ouncesPassed:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Chemex: \(ouncesPassed)"
        
        OuncesRequestedLabel.text = ouncesPassed
        makeInfoLabel.text = makeInfoPassed
        println(makeInfoPassed)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
