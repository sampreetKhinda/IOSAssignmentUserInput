//
//  ViewController.swift
//  Assignement2
//
//  Created by Sampreet singh on 29/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var countryName: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var outputTV: UITextView!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clearBtn(_ sender: Any) {
        firstName.text = ""
        lastName.text = ""
        countryName.text = ""
        age.text = ""
        outputTV.text = ""
        alertLabel.text = ""
    }
    @IBAction func addDetailsBtn(_ sender: Any) {
        var finalStr :String? = ""
        finalStr = " Full Name : \(firstName.text!)  \(lastName.text!) \n Country : \(countryName.text!) \n Age : \(age.text!)"
        outputTV.text = finalStr!
        alertLabel.text = ""
    }
    
    @IBAction func submitBtn(_ sender: Any) {
  
        if(firstName.text == "" ||
           lastName.text == "" ||
           countryName.text == "" ||
           age.text == ""){
            alertLabel.text = "Complete the missing Info!"
        } else {
            alertLabel.text = "Successfully submitted!"
        }
    }
    
    
}

