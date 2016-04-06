//
//  ViewController.swift
//  GuessingGame
//
//  Created by Felipe Morales on 12/6/15.
//  Copyright © 2015 felipmorales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomValue:Int = 0
    
    var userPoints:Int = 0
    
    var machinePoints:Int = 0
    
    @IBOutlet weak var userPointslbl: UILabel!
    
    @IBOutlet weak var machinePointslbl: UILabel!
    
    @IBOutlet weak var gameStatus: UILabel!
    
    func autoShuffle(){
        randomValue = Int(arc4random_uniform(5)) + 1
        print(randomValue)
    }
    
    @IBAction func shuffle(sender: AnyObject) {
        autoShuffle()
    }
    
    func updateUserPoints(){
        userPointslbl.text = String(userPoints)
    }
    
    func updateMachinePoints(){
        machinePointslbl.text = String(machinePoints)
    }
    
    func reset()
    {
        userPoints = 0
        machinePoints = 0
        updateMachinePoints()
        updateUserPoints()
    }

    @IBAction func userPressOne(sender: AnyObject) {
        if randomValue == 1 {
            userPoints = userPoints + 1
            updateUserPoints()
            if userPoints >= 5 {
                gameStatus.text = "You have won!!!"
                reset()
            }
            else {
                gameStatus.text = "Keep playing! It was \(randomValue)"
            }
            autoShuffle()
        }
        else {
            machinePoints = machinePoints + 1
            updateMachinePoints()
            if machinePoints >= 5 {
                gameStatus.text = "I have won!!!"
                reset()
            }
            else {
                gameStatus.text = "I'm closer to beat you! It was \(randomValue)"
            }
            autoShuffle()
        }
        
    }
    
    @IBAction func userPressTwo(sender: AnyObject) {
        if randomValue == 2 {
            userPoints = userPoints + 1
            updateUserPoints()
            if userPoints >= 5 {
                gameStatus.text = "You have won!!!"
                reset()
            }
            else {
                gameStatus.text = "Keep playing! It was \(randomValue)"
            }
            autoShuffle()
        }
        else {
            machinePoints = machinePoints + 1
            updateMachinePoints()
            if machinePoints >= 5 {
                gameStatus.text = "I have won!!!"
                reset()
            }
            else {
                gameStatus.text = "I'm closer to beat you! It was \(randomValue)"
            }
            autoShuffle()
        }    }
    
    @IBAction func userPressThree(sender: AnyObject) {
        if randomValue == 3 {
            userPoints = userPoints + 1
            updateUserPoints()
            if userPoints >= 5 {
                gameStatus.text = "You have won!!!"
                reset()
            }
            else {
                gameStatus.text = "Keep playing! It was \(randomValue)"
            }
            autoShuffle()
        }
        else {
            machinePoints = machinePoints + 1
            updateMachinePoints()
            if machinePoints >= 5 {
                gameStatus.text = "I have won!!!"
                reset()
            }
            else {
                gameStatus.text = "I'm closer to beat you! It was \(randomValue)"
            }
            autoShuffle()
        }    }
    
    @IBAction func userPressFour(sender: AnyObject) {
        if randomValue == 4 {
            userPoints = userPoints + 1
            updateUserPoints()
            if userPoints >= 5 {
                gameStatus.text = "You have won!!!"
                reset()
            }
            else {
                gameStatus.text = "Keep playing! It was \(randomValue)"
            }
            autoShuffle()
        }
        else {
            machinePoints = machinePoints + 1
            updateMachinePoints()
            if machinePoints >= 5 {
                gameStatus.text = "I have won!!!"
                reset()
            }
            else {
                gameStatus.text = "I'm closer to beat you! It was \(randomValue)"
            }
            autoShuffle()
        }
    }
    
    @IBAction func userPressFive(sender: AnyObject) {
        if randomValue == 5 {
            userPoints = userPoints + 1
            updateUserPoints()
            if userPoints >= 5 {
                gameStatus.text = "You have won!!!"
                reset()
            }
            else {
                gameStatus.text = "Keep playing! It was \(randomValue)"
            }
            autoShuffle()
        }
        else {
            machinePoints = machinePoints + 1
            updateMachinePoints()
            if machinePoints >= 5 {
                gameStatus.text = "I have won!!!"
                reset()
            }
            else {
                gameStatus.text = "I'm closer to beat you! It was \(randomValue)"
            }
            autoShuffle()
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

