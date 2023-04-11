//
//  Home + Extension.swift
//  fithubios
//
//  Created by aa maulana10 on 11/04/23.
//

import Foundation
import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func setupHomeTable() {
        
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.register(UINib.init(nibName: "HomeViewCell", bundle: nil), forCellReuseIdentifier: "HomeViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataUser.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeViewCell", for: indexPath) as! HomeViewCell
        
        let data = dataUser[indexPath.row]
        
        cell.nameLabel.text = data.name
        cell.emailLabel.text = data.email
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
    }
}
