//
//  ViewController2.swift
//  LAB4
//
//  Created by Geoffrey OConnor on 10/10/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var titlename: UITextField!
    
    @IBOutlet weak var ratingname: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seeitems"{
            let scene1ViewController = segue.destination as! ViewController
            //check to see that text was entered in the textfields
            if titlename.text!.isEmpty == false{
                scene1ViewController.user.title=titlename.text
            }
            if ratingname.text!.isEmpty == false{
                scene1ViewController.user.rating=ratingname.text
            }
        }
    }
    
    
    override func viewDidLoad() {
        titlename.delegate=self
        ratingname.delegate=self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
