//
//  ViewController.swift
//  Lab3
//
//  Created by Geoffrey OConnor on 10/1/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var txtfield2: UITextField!
    @IBOutlet weak var txtfield: UITextField!

    @IBOutlet weak var answertext: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
        return true
    }
    
    func multiply(){
        var num1:Float
        var num2:Float
        var ans:Float
        if txtfield.text!.isEmpty {
            num1 = 0.0
        }
        else {
            num1 = Float(txtfield.text!)!
        }
        if txtfield2.text!.isEmpty {
            num2 = 0.0
        }
        else {
            num2 = Float(txtfield2.text!)!
        }
        if txtfield.text!.isEmpty {
            let alert = UIAlertController(title: "Heads up!", message: "Number1 is equal to 0", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            
            self.present(alert, animated: true)
    
        
        }
        else if txtfield2.text!.isEmpty {
    let alert = UIAlertController(title: "Heads up!", message: "Number2 is equal to 0", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    
    
    self.present(alert, animated: true)
        }
        
        ans = num1 * num2
        answertext.text = "\(ans)"
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        multiply()
    }
    override func viewDidLoad() {
        self.txtfield2.delegate=self
        self.txtfield.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


