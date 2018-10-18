//
//  ViewController.swift
//  Midterm
//
//  Created by Geoffrey OConnor on 10/18/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var user = info()
    
    @IBOutlet weak var namelab: UILabel!
    @IBOutlet weak var emaillab: UILabel!
    @IBOutlet weak var txtfield: UITextField!
    @IBOutlet weak var segswitch: UISwitch!
    
    @IBOutlet weak var realsegswitch: UISegmentedControl!
    
    @IBOutlet weak var secondlabel: UILabel!
    @IBOutlet weak var firstlabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var sliderval: UILabel!
    @IBOutlet weak var workoutsweek: UISlider!
    
    @IBAction func sliderchange(_ sender: Any) {
        sliderval.text = "\(workoutsweek.value)"
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    @IBAction func finalbutton(_ sender: Any) {
        var num: Float
        var final1: Float
        var final2: Float
        //num = Float(txtfield.text!)!
        
        
        if txtfield.text!.isEmpty == true {
            num = 0
        }
        else {
            num = Float(txtfield.text!)!
        }
            if num < 30.0 {
                let alert = UIAlertController(title: "Warning", message: "That's not a real workout", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
                    self.txtfield.text = "30"
                    num = 30
                }))
                alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
                
                self.present(alert, animated: true)
               
            }
            else if realsegswitch.selectedSegmentIndex == 0 {
                    if segswitch.isOn == false {
                        final1 = (num/60)*6
                        firstlabel.text = "\(final1) miles ran"
                        final2 = (num/60)*600
                        secondlabel.text = "\(final2) calories burned"
                        image.image=UIImage(named: "run")
                }
                else {
                        final1 = ((num/60)*6)*workoutsweek.value
                        firstlabel.text = "\(final1) miles ran"
                        final2 = ((num/60)*600)*workoutsweek.value
                        secondlabel.text = "\(final2) calories burned"
                        image.image=UIImage(named: "run")
                }
                
            }
            else if realsegswitch.selectedSegmentIndex == 1 {
                    if segswitch.isOn == false {
                        final1 = (num/60)*15
                        firstlabel.text = "\(final1) miles biked"
                        final2 = (num/60)*510
                        secondlabel.text = "\(final2) calories burned"
                        image.image=UIImage(named: "bike")
                }
                else {
                        final1 = ((num/60)*15)*workoutsweek.value
                        firstlabel.text = "\(final1) miles biked"
                        final2 = ((num/60)*510)*workoutsweek.value
                        secondlabel.text = "\(final2) calories burned"
                        image.image=UIImage(named: "bike")
                }
            }
            else if realsegswitch.selectedSegmentIndex == 2 {
                    if segswitch.isOn == false {
                        image.image=UIImage(named: "swim")
                        final1 = (num/60)*2
                        firstlabel.text = "\(final1) miles swam"
                        final2 = (num/60)*420
                        secondlabel.text = "\(final2) calories burned"
                }
                else {
                        image.image=UIImage(named: "swim")
                        final1 = ((num/60)*2)*workoutsweek.value
                        firstlabel.text = "\(final1) miles swam"
                        final2 = ((num/60)*420)*workoutsweek.value
                        secondlabel.text = "\(final2) calories burned"
            }
                
        }
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtfield.delegate=self
        
        if let receiver1 = user.name {
            emaillab.text = "Your name is\(receiver1)"
        }
        if let receiver2 = user.email {
            namelab.text = "Your email is\(receiver2)"
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

