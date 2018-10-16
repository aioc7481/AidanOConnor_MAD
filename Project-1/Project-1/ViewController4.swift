//
//  ViewController4.swift
//  Project-1
//
//  Created by Geoffrey OConnor on 10/15/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var num2 : [Int]?
    var num1 : Int?
    var seg2 = 0
    
    @IBAction func backbuttn(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }
    
    @IBOutlet weak var betamt: UISegmentedControl!
    
    @IBOutlet weak var regionpicker: UIPickerView!
    let regions = ["AFC East", "AFC West", "AFC North", "AFC South", "NFC East", "NFC West", "NFC North", "NFC South"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return regions[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return regions.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //betlabel.text = "\(row)"
        
        num1 = row
        getbet()
    }
    
    func getbet() {
        if num1 == 0 {
            num2 = [3, 16, 18, 21]
        }
        else if num1 == 1 {
            num2 = [9, 15, 22, 25]
        }
        else if num1 == 2 {
            num2 = [2, 6, 7, 24]
        }
        else if num1 == 3 {
            num2 = [12, 13, 14, 30]
        }
        else if num1 == 4 {
            num2 = [8, 20, 23, 31]
        }
        else if num1 == 5 {
            num2 = [0, 26, 27, 28]
        }
        else if num1 == 6 {
            num2 = [5, 11, 17, 10]
        }
        else if num1 == 7 {
            num2 = [1, 4, 19, 29]
        }
    }
    
    func getbetamt2 () {
        if betamt.selectedSegmentIndex == 0 {
            if score < 50 {
                let alert=UIAlertController(title: "Warning", message: "You do not have a high enough score to bet 50", preferredStyle: UIAlertControllerStyle.alert)
                //create a UIAlertAction object for the button
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(cancelAction) //adds the alert action to the alert object
                betamt.selectedSegmentIndex = 0
                present(alert, animated: true, completion: nil)
            }
            else {
                seg2 = 50
            }
        }
        else if betamt.selectedSegmentIndex == 1 {
            if score < 100 {
                let alert=UIAlertController(title: "Warning", message: "You do not have a high enough score to bet 100.", preferredStyle: UIAlertControllerStyle.alert)
                //create a UIAlertAction object for the button
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(cancelAction) //adds the alert action to the alert object
                betamt.selectedSegmentIndex = 0
                present(alert, animated: true, completion: nil)
            }
            else {
                seg2 = 100
            }
        }
        else if betamt.selectedSegmentIndex == 2 {
            if score < 250 {
                let alert=UIAlertController(title: "Warning", message: "You do not have a high enough score to bet 250", preferredStyle: UIAlertControllerStyle.alert)
                //create a UIAlertAction object for the button
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(cancelAction) //adds the alert action to the alert object
                betamt.selectedSegmentIndex = 0
                present(alert, animated: true, completion: nil)
            }
            else {
                seg2 = 250
            }
        }
        else if betamt.selectedSegmentIndex == 3 {
            if score < 500 {
                let alert=UIAlertController(title: "Warning", message: "You do not have a high enough score to bet 500", preferredStyle: UIAlertControllerStyle.alert)
                //create a UIAlertAction object for the button
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(cancelAction) //adds the alert action to the alert object
                betamt.selectedSegmentIndex = 0
                present(alert, animated: true, completion: nil)
            }
            else {
                seg2 = 500
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "regbet"{
            if num2 == nil {
                num2 = [3, 16, 18, 21]
            }
                getbetamt2 ()
                let scene2 = segue.destination as! ViewController2
                scene2.user.betamount = seg2
                scene2.user.bet = num2
            }
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
