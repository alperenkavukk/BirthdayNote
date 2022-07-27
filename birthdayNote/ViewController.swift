//
//  ViewController.swift
//  birthdayNote
//
//  Created by Alperen Kavuk on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        let kayitliName=UserDefaults.standard.object(forKey: "name")
        let kayitliBirthday=UserDefaults.standard.object(forKey: "birthday")
        
        if let newName=kayitliName as? String{
            nameLabel.text="Name: \(newName)"
        }
        if let newbirthday=kayitliBirthday as? String{
            birthdayLabel.text=newbirthday
        }


    }
    @IBAction func saveButtonClicked(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")

        
        nameLabel.text="Name: \(nameTextField.text!)"
        birthdayLabel.text="birthday: \(birthdayTextField.text!)"
        
    }
    @IBAction func clearClicked(_ sender: Any) {
        
        
    let kayitliName=UserDefaults.standard.object(forKey: "name")
    let kayitliBirthday=UserDefaults.standard.object(forKey: "birthday")
        if(kayitliName as? String != nil){
            UserDefaults.standard.removeObject(forKey: "name")
        }
        if(kayitliBirthday as? String != nil){
            UserDefaults.standard.removeObject(forKey: "birthday")
        }
    }
    

}

