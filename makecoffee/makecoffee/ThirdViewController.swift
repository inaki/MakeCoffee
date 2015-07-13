//
//  FirstViewController.swift
//  makecoffee
//
//  Created by admin on 7/12/15.
//  Copyright (c) 2015 fishorse. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var ouncesReqLabel: DesignableLabel!
    
    @IBOutlet weak var coffeeQuestionLabel: DesignableLabel!
    
    @IBOutlet weak var ouncesReqTextField: UITextField!
    
    @IBAction func coffeeReqBtn(sender: AnyObject) {
        
        var ouncesDouble : Double = (ouncesReqTextField.text as NSString).doubleValue
        
        var beanQty : Double = ouncesDouble * 1.20833333
        var waterQty : Double = beanQty * 16.4285714
        var firstPour : Int = Int(beanQty) * 2
        var secondPour : Int = Int(waterQty) - firstPour
        
        
        ouncesReqLabel.text = ouncesReqTextField.text + " oz"
        println(secondPour)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

