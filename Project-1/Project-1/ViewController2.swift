//
//  ViewController2.swift
//  Project-1
//
//  Created by Geoffrey OConnor on 10/15/18.
//  Copyright © 2018 Aidan OConnor. All rights reserved.
//

import UIKit
var score = 1000



class ViewController2: UIViewController {
    
    var user = player()
    
    @IBOutlet weak var winnerlabel: UILabel!
    
    
    @IBOutlet weak var wheel: UIImageView!
    
    @IBAction func quitbutton(_ sender: Any) {
        performSegue(withIdentifier: "quit", sender: self)
        score = 1000
    }
    
    
    @IBOutlet weak var scoreshow: UILabel!
    @IBOutlet weak var labels: UILabel!
    
    @IBOutlet weak var resultlabel: UILabel!
    
    
    func gameover () {
        if score <= 0 {
            resultlabel.text = "Game Over"
            let alert=UIAlertController(title: "Warning", message: "You have a score of 0. You lose.", preferredStyle: UIAlertControllerStyle.alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title: "OK", style:UIAlertActionStyle.cancel, handler: nil)
            alert.addAction(cancelAction) //adds the alert action to the alert object
            
            
            present(alert, animated: true, completion: nil)
            performSegue(withIdentifier: "quit", sender: self)
            
            
        }
    }
    

    
    @IBAction func spinwheel(_ sender: Any) {
        if user.bet != nil {
            
            
            let numba = Int(arc4random_uniform(31))
            let times = CGFloat(numba)
            let final = (times * 11.6) * (CGFloat.pi / 180)
            UIView.animate(withDuration: 3, animations: ({
                
                self.wheel.transform = CGAffineTransform(rotationAngle: final)}))
            
            
            let copy = user.bet
            if numba == 0 {
                winnerlabel.text = "Arizona Cardinals was drawn."
            }
            else if numba == 1 {
                winnerlabel.text = "Atlanta Falcons was drawn."
            }
            else if numba == 2 {
                winnerlabel.text = "Baltimore Ravens was drawn."
            }
            else if numba == 3 {
                winnerlabel.text = "Buffalo Bills was drawn."
            }
            else if numba == 4 {
                winnerlabel.text = "Carolina Panthers was drawn."
            }
            else if numba == 5 {
                winnerlabel.text = "Chicago Bears was drawn."
            }
            else if numba == 6 {
                winnerlabel.text = "Cincinnati Bengals was drawn."
            }
            else if numba == 7 {
                winnerlabel.text = "Cleveland Browns was drawn."
            }
            else if numba == 8 {
                winnerlabel.text = "Dallas Cowboys was drawn."
            }
            else if numba == 9 {
                winnerlabel.text = "Denver Broncos was drawn."
            }
            else if numba == 10 {
                winnerlabel.text = "Detroit Lions was drawn."
            }
            else if numba == 11 {
                winnerlabel.text = "Green Bay Packers was drawn."
            }
            else if numba == 12 {
                winnerlabel.text = "Houston Texans was drawn."
            }
            else if numba == 13 {
                winnerlabel.text = "Indianapolis Colts was drawn."
            }
            else if numba == 14 {
                winnerlabel.text = "Jacksonville Jaguars was drawn."
            }
            else if numba == 15 {
                winnerlabel.text = "Kansas City Chiefs was drawn."
            }
            else if numba == 16 {
                winnerlabel.text = "Miami Dolphins was drawn."
            }
            else if numba == 17 {
                winnerlabel.text = "Minnesota Vikings was drawn."
            }
            else if numba == 18 {
                winnerlabel.text = "New England Patriots was drawn."
            }
            else if numba == 19 {
                winnerlabel.text = "New Orleans Saints was drawn."
            }
            else if numba == 20 {
                winnerlabel.text = "New York Giants was drawn."
            }
            else if numba == 21 {
                winnerlabel.text = "New York Jets was drawn."
            }
            else if numba == 22 {
                winnerlabel.text = "Oakland Raiders was drawn."
            }
            else if numba == 23 {
                winnerlabel.text = "Philadelphia Eagles was drawn."
            }
            else if numba == 24 {
                winnerlabel.text = "Pittsburgh Steelers was drawn."
            }
            else if numba == 25 {
                winnerlabel.text = "San Diego Chargers was drawn."
            }
            else if numba == 26 {
                winnerlabel.text = "San Francisco 49ers was drawn."
            }
            else if numba == 27 {
                winnerlabel.text = "Seattle Seahawks was drawn."
            }
            else if numba == 28 {
                winnerlabel.text = "St. Louis Rams was drawn."
            }
            else if numba == 29 {
                winnerlabel.text = "Tampa Bay Buccaneers was drawn."
            }
            else if numba == 30 {
                winnerlabel.text = "Tennessee Titans was drawn."
            }
            else if numba == 31 {
                winnerlabel.text = "Washington Redskins was drawn."
            }
            if (copy?.contains(numba))! {
                resultlabel.text = "You Win!"
                if copy?.count == 16 {
                    score = score + (user.betamount / 2)
                }
                else if copy?.count == 4 {
                    score = score + (user.betamount * 12)
                }
                else if copy?.count == 1 {
                    score = score + (user.betamount * 35)
                }
                //user.score = user.score + user.betamount
                //scoreshow.text = "\(user.score)"
                scoreshow.text = "Current Score: \(score)"
            }
            else {
                resultlabel.text = "You Lose."
                
                score = score - user.betamount
                
                
                //user.score = user.score - user.betamount
                scoreshow.text = "Current Score: \(score)"
            }
            
            user.betamount = 0
            user.bet = nil
            //user.score = user.score
        
        }
        else {
            resultlabel.text = "You did not make a bet."
        }
        gameover()
    }
    
    
    
    @IBAction func betbutton(_ sender: Any) {
        performSegue(withIdentifier: "segue3", sender: self)
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let receiver = user.name {
            labels.text = "Welcome: \(receiver)"
        }
        scoreshow.text = "Current Score: \(score)"
        
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
