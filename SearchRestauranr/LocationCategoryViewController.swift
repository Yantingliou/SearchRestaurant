//
//  LocationCategoryViewController.swift
//  SearchRestauranr
//
//  Created by 劉彥廷 on 2018/12/4.
//  Copyright © 2018年 liou. All rights reserved.
//

import UIKit

class LocationCategoryViewController: UIViewController {

    var selectTitleString: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationItem.title = selectTitleString!
    }
    



}
extension LocationCategoryViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch selectTitleString {
        case "北部":
            print(LocationIName.shard.taiwanNorth.count)
            return LocationIName.shard.taiwanNorth.count
        case "中部":
            print(LocationIName.shard.taiwanNorth.count)
            return LocationIName.shard.taiwanCentral.count
        case "南部":
            return LocationIName.shard.taiwanSouth.count
            default:
            print("erro collectionView ")
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let  collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LocationCollectionViewCell", for: indexPath) as! LocationCollectionViewCell
        
        switch selectTitleString {
        case "北部":
            collectionCell.locationName.text = LocationIName.shard.taiwanNorth[indexPath.row]
        case "中部":
            collectionCell.locationName.text = LocationIName.shard.taiwanCentral[indexPath.row]
        case "南部":
            collectionCell.locationName.text = LocationIName.shard.taiwanSouth[indexPath.row]
        default:
            print("erro collectionView ")
        }
        return collectionCell
    }

}
