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
    @IBOutlet weak var collectionView: UICollectionView!
    
    var email = ""
    
    var dataUser: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingsLabel.text = "Hi, \(email.capitalized)"
        setupHomeTable()
        setupHomeBanner()
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
    
    func  setupHomeBanner() {
            
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "BannerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell")
    }

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell", for: indexPath) as! BannerCollectionViewCell
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 300, height: 300)
    }
    
    
}
