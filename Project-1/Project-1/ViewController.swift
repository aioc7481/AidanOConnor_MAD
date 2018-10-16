//
//  ViewController.swift
//  Project-1
//
//  Created by Geoffrey OConnor on 10/15/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nametext: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scene2 = segue.destination as! ViewController2
        
        if let text = nametext.text {
            scene2.user.name = text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nametext.delegate=self
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

