//
//  ViewController.swift
//  alert
//
//  Created by R93 on 20/01/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextFirld: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func login(_ sender: UIButton) {
        if userNameTextField.text == ""
        {
            showalert(title: "Enter username")
        }
        else if passwordTextFirld.text?.count ?? 0 != 8
        {
            showalert(title: "Enter Passwor in 8 digit")
        }
        else
        {
           
        }
    }
    
    func showalert(title:String)
    {
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cancle", style: .destructive, handler: nil))
        present(alert,animated:true,completion: nil)
        
        
    }
}

