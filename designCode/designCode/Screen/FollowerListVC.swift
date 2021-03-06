//
//  FollowerListVC.swift
//  designCode
//
//  Created by islam magdy on 7/15/20.
//  Copyright © 2020 islam magdy. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    enum section {
        case main
    }

    var username : String!
    var followers : [Follower] = []
    var collectionView : UICollectionView!
    var dataSource : UICollectionViewDiffableDataSource<section,Follower>!
    override func viewDidLoad() {
        super.viewDidLoad()
        configerViewController()
        
        getFollowers()
        configureCollectionView()
        configerDataSource()
     
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    func configerViewController() {
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func getFollowers () {
        
           NetworkManager.shared.getFollowers(for: username, page: 1 ) {
            
            [weak self ]
               result in
            guard let self = self else {return }
               switch result {
               case .success(let followers) :
                self.followers = followers
                self.updateData()
        
               case.failure(let error ) :
                   self.presentGFAlartOnMainThrad(title: "Bad stuff Happend", message: error.rawValue , buttonTitle: "ok")
               }
           }
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.CreateThreeColumFlowLayout(in : view))
       view.addSubview(collectionView)
        collectionView.backgroundColor = .systemBackground
        collectionView.register(FollowerCell.self, forCellWithReuseIdentifier: FollowerCell.reuseID)
    }
    


    func configerDataSource() {
        dataSource = UICollectionViewDiffableDataSource<section , Follower>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, follower) -> UICollectionViewCell? in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FollowerCell.reuseID, for: indexPath) as! FollowerCell
            cell.set(follower: follower)
            return cell
        })
    }
    func updateData() {
        var snapshot = NSDiffableDataSourceSnapshot<section , Follower>()
        snapshot.appendSections([.main])
        snapshot.appendItems(followers)
        DispatchQueue.main.async{
            self.dataSource.apply(snapshot ,animatingDifferences:  true)
        }
       
        
    }
    
}
