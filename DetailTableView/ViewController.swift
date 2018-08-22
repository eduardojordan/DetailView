//
//  ViewController.swift
//  DetailTableView
//
//  Created by Eduardo on 22/8/18.
//  Copyright © 2018 Eduardo Jordan Muñoz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let locationName = ["Hawaii Resort", "Mountain Expedition", "Scubs Diving"]
    
    let locationImage = [ UIImage(named:"hawaiiResort.jpg"),
                          UIImage(named: "mountainExpedition.jpg"),
                          UIImage (named: "scubaDiving.jpg")]
    
    let locationDescription = ["A beutiful beach resort off the coast of  Hawaii", "An exhilarating mountain adventure in Yosemite National Park", "An amazing deep sea exploration event in the Gulf of Mexico"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locationName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.locationName.text = locationName[indexPath.row]
        cell.locationImage.image = locationImage [indexPath.row]
        cell.locationDescription.text = locationDescription[indexPath.row]
        
        
        
        // This for modification and effects cell, shadow, etc
        
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize ( width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
     return cell
    }
}

