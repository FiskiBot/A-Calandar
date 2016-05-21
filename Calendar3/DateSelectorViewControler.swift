//
//  ViewController.swift
//  Calendar3
//
//  Created by Patrick Moening on 10/28/15.
//  Copyright © 2015 Fiskisoft. All rights reserved.
//

import UIKit

class DateSelectorViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var thingPicker: UIPickerView!
    
    
    let things = ["thing1","thing2", "thing3"]
    
    var use : Use!
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return things.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return things[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Puts the Things array into the thingPicker
        self.thingPicker.delegate = self
        self.thingPicker.dataSource = self
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        performSegueWithIdentifier("UseCell", sender: nil)
    }
    
}