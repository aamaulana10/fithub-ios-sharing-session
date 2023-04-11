//
//  LoginViewController.swift
//  fithubios
//
//  Created by aa maulana10 on 10/04/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTexfield: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var subTextLabel: UILabel!
    
    var email = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        email = emailTexfield.text ?? "no email"
        
        print("email \(email)")
        print("password \(passwordTextField.text ?? "no password")")
    }
    

}
