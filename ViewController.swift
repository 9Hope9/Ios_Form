//
//  ViewController.swift
//  try 4
//
//  Created by user240436 on 1/30/24.
//

import UIKit

class ViewController: UIViewController {
    // Outlets for UI elements
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var finalResult: UITextView!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Action when the "Add" button is pressed
        label.isHidden = true
        // Do any additional setup after loading the view.
    }
    // Action when the "Add" button is pressed
    @IBAction func addFun(_ sender: UIButton) {
        let fName = firstName.text ?? ""
        let lName = lastName.text ?? ""
        let age = age.text ?? ""
        let cName = city.text ?? ""
        let fullName = String(fName + " " + lName)
        // Display information in the finalResult text view
        finalResult.text = """
            Full Name:  \(fullName)
            Age: \(age)
            Country: \(cName)
        """
    }
    @IBAction func clearFun(_ sender: UIButton) {
        // Call clear function to reset text fields
       clear()
        finalResult.text = ""
        label.text = ""
        label.isHidden = true
        firstName.layer.borderWidth = 0
        lastName.layer.borderWidth = 0
        city.layer.borderWidth = 0
        age.layer.borderWidth = 0
    }
    // Action when the "Submit" button is pressed
    @IBAction func submitFun(_ sender: UIButton) {
        let fName = firstName.text ?? ""
        let lName = lastName.text ?? ""
        let ageValue = age.text ?? ""
        let cName = city.text ?? ""
        // Show label and provide feedback based on input
        label.isHidden = false
        if fName != "" && lName != "" && ageValue != "" && cName != "" {
            label.text = "Successfully submitted"
            // Call clear function to reset text fields
            clear()
            
        }
        else{
            label.text = "Complete the missing Info"
        // Highlight empty fields with red borders
            if fName == "" {
                firstName.layer.borderWidth = 1.0  // Set the border width as needed
                firstName.layer.borderColor = UIColor.red.cgColor  // Set the border color to red
            }
            else{
                firstName.layer.borderWidth = 0
                
            }
            if lName == "" {
                lastName.layer.borderWidth = 1.0  // Set the border width as needed
                lastName.layer.borderColor = UIColor.red.cgColor  // Set the border color to red
            }
            else{
                lastName.layer.borderWidth = 0
            }
            if ageValue == "" {
                age.layer.borderWidth = 1.0  // Set the border width as needed
                age.layer.borderColor = UIColor.red.cgColor  // Set the border color to red
            }
            else{
                age.layer.borderWidth = 0
            }
            if cName == "" {
                city.layer.borderWidth = 1.0  // Set the border width as needed
                city.layer.borderColor = UIColor.red.cgColor  // Set the border color to red
            }
            else{
                city.layer.borderWidth = 0
            }
        }
    }
 // Function to clear all text fields
    func clear() {
        firstName.text = ""
        lastName.text = ""
        city.text = ""
        age.text = ""
    }
    
}


