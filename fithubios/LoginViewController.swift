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
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        clearTextField()
    }
    
    func clearTextField() {
        
        passwordTextField.text = ""
        emailTexfield.text = ""
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        email = emailTexfield.text ?? "no email"
        password = passwordTextField.text ?? "no password"
        
        print("email \(email)")
        print("password \(password)")
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        
        vc.email = email

        self.navigationController?.pushViewController(vc, animated: true)
//        self.present(vc, animated: true)
    }
    

}
