//
//  MainVC.swift
//  Tipster
//
//  Created by Ryan Kistner on 1/11/18.
//  Copyright © 2018 Ryan Kistner. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    //Sum Variable
    @IBOutlet weak var sumOfAllNumbersPressed: UILabel!
    //Variables for Percentages
    @IBOutlet weak var tenPercentOfTotal: UILabel!
    @IBOutlet weak var fifteenPercentOfTotal: UILabel!
    @IBOutlet weak var twentyPercentOfTotal: UILabel!
    //Variables for Sum + Percentages
    @IBOutlet weak var totalAfterAddingTenPercent: UILabel!
    @IBOutlet weak var totalAfterAddingFifteenPercent: UILabel!
    @IBOutlet weak var totalAfterAddingTwentyPercent: UILabel!
    
    @IBOutlet weak var trackDecimalUsage: UIButton!
    var checkIfDecimalWasUsed: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sumOfAllNumbersPressed.text = ""
        tenPercentOfTotal.text = "$0.0"
        fifteenPercentOfTotal.text = "$0.0"
        twentyPercentOfTotal.text = "$0.0"
        totalAfterAddingTenPercent.text = "$0.0"
        totalAfterAddingFifteenPercent.text = "$0.0"
        totalAfterAddingTwentyPercent.text = "$0.0"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Button Controls
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        sumOfAllNumbersPressed.text = ""
    }
    
    @IBAction func addToSumOfAllNumbersPressed(_ sender: UIButton){
        if var _ = sumOfAllNumbersPressed{
            if(sender.tag == 10){
                sumOfAllNumbersPressed.text = ""
                tenPercentOfTotal.text = "0.0"
                fifteenPercentOfTotal.text = "0.0"
                twentyPercentOfTotal.text = "0.0"
                totalAfterAddingTenPercent.text = "0.0"
                totalAfterAddingFifteenPercent.text = "0.0"
                totalAfterAddingTwentyPercent.text = "0.0"
                checkIfDecimalWasUsed = false
                
            }else if(sender.tag == 11){
                if(!checkIfDecimalWasUsed) {
                sumOfAllNumbersPressed.text?.append(".")
                checkIfDecimalWasUsed = true
                }else{
                    print("Can't reuse '.'")
                    }
                }
            else{
                sumOfAllNumbersPressed.text?.append(String(sender.tag))
                calculatingPercentagesAfterNumAddedToSum()
            }
        }
    }
    func calculatingPercentagesAfterNumAddedToSum(){
        //Convert sumOfAllNumbersPressed into a Double
        if var _ = sumOfAllNumbersPressed{
            tenPercentOfTotal.text = String(Double(sumOfAllNumbersPressed.text!)! * 0.1)
            fifteenPercentOfTotal.text = String(Double(sumOfAllNumbersPressed.text!)! * 0.15)
            twentyPercentOfTotal.text = String(Double(sumOfAllNumbersPressed.text!)! * 0.20)
            totalAfterAddingTenPercent.text = String(Double(sumOfAllNumbersPressed.text!)! + Double(tenPercentOfTotal.text!)!)
            totalAfterAddingFifteenPercent.text = String(Double(sumOfAllNumbersPressed.text!)! + Double(fifteenPercentOfTotal.text!)!)
            totalAfterAddingTwentyPercent.text = String(Double(sumOfAllNumbersPressed.text!)! + Double(fifteenPercentOfTotal.text!)!)
        }
   
    }
    
    @IBAction func tipPercentageIncreaseSlider(_ sender: UISlider) {
        print(sender)
    }
    
}



