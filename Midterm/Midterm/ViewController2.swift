//
//  ViewController2.swift
//  Midterm
//
//  Created by Geoffrey OConnor on 10/18/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "done"{
            let scene1ViewController = segue.destination as! ViewController
            //check to see that text was entered in the textfields
            if name.text!.isEmpty == false{
                scene1ViewController.user.name=name.text
            }
            if email.text!.isEmpty == false{
                scene1ViewController.user.email=email.text
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.delegate=self
        email.delegate=self
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
