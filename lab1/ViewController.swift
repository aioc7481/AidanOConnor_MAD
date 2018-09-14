//
//  ViewController.swift
//  lab1
//
//  Created by Geoffrey OConnor on 9/13/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var header: UILabel!
    
    @IBAction func imgchange(_ sender: UIButton) {
        if sender.tag == 1 {
            img.image=UIImage(named: "steelers")
            label.text="Pittsburgh Steelers"
          
        }
        else if sender.tag == 2 {
            img.image=UIImage(named: "penguins")
            label.text="Pittsburgh Penguins"
           
        }
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

