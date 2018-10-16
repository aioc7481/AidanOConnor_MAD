//
//  ViewController5.swift
//  Project-1
//
//  Created by Geoffrey OConnor on 10/15/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var num3 : [Int]?
    var num4 : Int?
    var seg = 0
    @IBOutlet weak var betamt: UISegmentedControl!
    
    @IBAction func backbutton(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }
    
    
    @IBOutlet weak var conferencebet: UIPickerView!
    
    let conference = ["AFC Conference", "NFC Conference"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return conference[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return conference.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        num4 = row
        getbet()
    }
    func getbet () {
        if num4 == 0 {
            num3 = [3, 16, 18, 21, 9, 15, 22, 25, 2, 6, 7, 24, 12, 13, 14, 30]
        }
        else if num4 == 1 {
            num3 = [8, 20, 23, 31, 0, 26, 27, 28, 5, 11, 17, 10, 1, 4, 19, 29]
        }
    }
    
    func getbetamt3 () {
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
                seg = 50
            }
        }
        else if betamt.selectedSegmentIndex == 1 {
            if score < 100 {
                let alert=UIAlertController(title: "Warning", message: "You do not have a high enough score to bet 100", preferredStyle: UIAlertControllerStyle.alert)
                //create a UIAlertAction object for the button
                let cancelAction=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(cancelAction) //adds the alert action to the alert object
                betamt.selectedSegmentIndex = 0
                present(alert, animated: true, completion: nil)
            }
            else {
                seg = 100
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
                seg = 250
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
                seg = 500
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "conbet"{
            if num3 == nil {
                num3 = [3, 16, 18, 21, 9, 15, 22, 25, 2, 6, 7, 24, 12, 13, 14, 30]
            }
                getbetamt3()
                let scene2 = segue.destination as! ViewController2
                scene2.user.betamount = seg
                scene2.user.bet = num3
            
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
