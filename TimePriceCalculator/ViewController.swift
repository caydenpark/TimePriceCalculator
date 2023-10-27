//
//  ViewController.swift
//  TimePriceCalculator
//
//  Created by Cayden Glenn Park on 10/17/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets to connect with interface elements in the storyboard
    @IBOutlet weak var hourlyWage: UITextField!
    @IBOutlet weak var dollarPrice: UITextField!
    @IBOutlet weak var timePrice: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // This function is called when the view loads
        // Additional setup can be performed here
    }

    // This function is connected to the "Calculate" button
    @IBAction func calculateTimePrice(_ sender: Any) {
        // Attempt to extract & convert text input to Floats
        if let hourlyWageText = hourlyWage.text,
           let dollarPriceText = dollarPrice.text,
           let hourlyWageValue = Float(hourlyWageText),
           let dollarPriceValue = Float(dollarPriceText)
        {
            // If all conversions are successful, calculate timePriceValue.
            let timePriceValue = dollarPriceValue / hourlyWageValue
//            timePrice.text = "\(timePriceValue) hr"
            timePrice.text = "\(String(format: "%.2f", timePriceValue)) hr"
        } else {
            timePrice.text = "Invalid input"
        }
    }
}
