//
//  ViewController3.swift
//  Project-1
//
//  Created by Geoffrey OConnor on 10/15/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var num : [Int]?
    var number2 = 0
    
    @IBOutlet weak var teampicker: UIPickerView!
    
    @IBOutlet weak var betamt: UISegmentedControl!
    
    let teams = ["Arizona Cardinals", "Atlanta Falcons", "Baltimore Ravens", "Buffalo Bills", "Carolina Panthers", "Chicago Bears", "Cincinnati Bengals", "Cleveland Browns", "Dallas Cowboys", "Denver Broncos", "Detroit Lions", "Green Bay Packers", "Houston Texans", "Indianapolis Colts", "Jacksonville Jaguars", "Kansas City Chiefs", "Miami Dolphins", "Minnesota Vikings", "New England Patriots", "New Orleans Saints", "New York Giants", "New York Jets", "Oakland Raiders", "Philadelphia Eagles", "Pittsburgh Steelers", "St. Louis Rams", "San Diego Chargers", "San Francisco 49ers", "Seattle Seahawks", "Tampa Bay Buccaneers", "Tennessee Titans", "Washington Redskins"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teams[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teams.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        num = [row]
        
    }
    
    func getbetamt () {
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
                number2 = 50
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
                number2 = 100
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
                number2 = 250
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
            number2 = 500
            }
        }
    }
    
    @IBAction func backbutton(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "teambet"{
            if num == nil {
                num = [0]
            }
            
            getbetamt()
            let scene2 = segue.destination as! ViewController2
            scene2.user.betamount = number2
            scene2.user.bet = num
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
