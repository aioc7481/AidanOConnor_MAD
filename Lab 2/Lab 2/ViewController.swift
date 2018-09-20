//
//  ViewController.swift
//  Lab 2
//
//  Created by Geoffrey OConnor on 9/19/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var regswitch: UISwitch!
    @IBOutlet weak var segswitch: UISegmentedControl!
    
    @IBAction func segswitchact(_ sender: UISegmentedControl) {
        if segswitch.selectedSegmentIndex == 0 {
            image1.image=UIImage(named: "mario")
            label1.text = "mario"
        }
        else if segswitch.selectedSegmentIndex == 1 {
            image1.image=UIImage(named: "wario")
            label1.text = "wario"
        }
    }
    @IBAction func textSwitch(_ sender: UISwitch) {
        if regswitch.isOn {
            label1.text=label1.text?.lowercased()
                label1.font = label1.font.withSize(17)
            
        }
        else {
            label1.text=label1.text?.uppercased()
            label1.font = label1.font.withSize(30)
        }
    }
    @IBAction func sliderColor(_ sender: UISlider) {
        label2.textColor = UIColor(white:CGFloat(slider1.value)/255, alpha: 1)
        label1.textColor = UIColor(white:CGFloat(slider1.value)/255, alpha: 1)
        self.view.backgroundColor = UIColor.red
        
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

