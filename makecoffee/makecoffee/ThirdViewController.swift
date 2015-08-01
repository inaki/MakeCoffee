//
//  FirstViewController.swift
//  makecoffee
//
//  Created by admin on 7/12/15.
//  Copyright (c) 2015 fishorse. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var coffeeQuestionLabel: DesignableLabel!
    
    @IBOutlet weak var ouncesReqTextField: UITextField!
    
    var beans: String?
    
    @IBAction func coffeeReqBtn(sender: AnyObject) {
        
        var ouncesDouble : Double = (ouncesReqTextField.text as NSString).doubleValue
        
        var beanQty : Double = ouncesDouble * 1.20833333
        var waterQty : Double = beanQty * 16.4285714
        var firstPour : Int = Int(beanQty) * 2
        var secondPour : Int = Int(waterQty) - firstPour
        
        var cBeans:String = String(format:"%.2f", beanQty)
        var waterQ:String = String(format: "%.2f", waterQty)
        
        func results(beans: String, water: String, firstP: Int, secondP: Int)
        {
            println(" \(beans)g coffee \n \(water)oz water \n (1st pour: \(firstP)oz, 2nd pour: \(secondP)oz)")
        }
        
        
        println(cBeans + "hey")
        
        results(cBeans, waterQ, firstPour, secondPour)
        
        beans = " \(cBeans)g coffee \n \(waterQ)oz water \n (1st pour: \(firstPour)oz, 2nd pour: \(secondPour)oz)"
        
        self.coffeeQuestionLabel.resignFirstResponder()
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "coffeeReqBtnSegue") {
            var svc = segue.destinationViewController as! ChemexResultsViewController;
            svc.ouncesPassed = ouncesReqTextField.text + " oz";
            svc.makeInfoPassed = beans;
            
            
        }
    }
    
}

