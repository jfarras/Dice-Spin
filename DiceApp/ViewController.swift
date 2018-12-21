//
//  ViewController.swift
//  DiceApp
//
//  Created by Jordi Farras Mañe on 20/12/2018.
//  Copyright © 2018 Jordi Farras Mañe. All rights reserved.
//

import UIKit
import GameKit
class ViewController: UIViewController {

    var randomDiceIndex: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray :[String] = ["one","two","three","four","five","six"]
    
    @IBOutlet weak var diceTwo: UIImageView!
    @IBOutlet weak var diceOne: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButton(_ sender: Any) {
        
        updateDice()

    }
    
    func updateDice() -> Void{
        randomDiceIndex = Int(arc4random_uniform(6));
        randomDiceIndex2 = Int(arc4random_uniform(6));
        
        diceOne.image = UIImage(named: diceArray[randomDiceIndex])
        diceTwo.image = UIImage(named: diceArray[randomDiceIndex])
    }
    
}

