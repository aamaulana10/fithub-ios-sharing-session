//
//  HomeViewController.swift
//  fithubios
//
//  Created by aa maulana10 on 11/04/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var greetingsLabel: UILabel!
    @IBOutlet weak var homeTableView: UITableView!
    
    var email = ""
    
    var dataUser: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingsLabel.text = "Hi, \(email.capitalized)"
        setupHomeTable()
        getDataUser()
    }
    
    func getDataUser() {
        
        dataUser.append(User(name: "Aa", email: "aamaulanabola10"))
        dataUser.append(User(name: "Dicky", email: "dicky12"))
        dataUser.append(User(name: "Ezra", email: "ezra14"))
        
        DispatchQueue.main.async {
            
            self.homeTableView.reloadData()
        }
    }

}
