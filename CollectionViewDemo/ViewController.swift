//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Shaikat on 12/4/21.
//  Copyright © 2021 Shayla.18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    //var people = ["shayla", "sadid", "sadman", "sadidur",
     //             "ayaan", "alfi", "mim", "sayma", "parvin"]
    
//    var image : [UIImage] = [
//        UIImage(named: "1.png") ?? UIImage(),
//        UIImage(named: "2.png") ?? UIImage(),
//        UIImage(named: "3.png") ?? UIImage(),
//        UIImage(named: "4.png") ?? UIImage(),
//        UIImage(named: "5.png") ?? UIImage(),
//        UIImage(named: "6.png") ?? UIImage(),
//        UIImage(named: "7.png") ?? UIImage(),
//        UIImage(named: "8.png") ?? UIImage(),
//        UIImage(named: "9.png") ?? UIImage(),
//        UIImage(named: "10.png") ?? UIImage(),
//        UIImage(named: "11.png") ?? UIImage()]
    
    var imageNameArray : [String] = [
        "1.png",
        "2.png",
        "3.png",
        "4.png",
        "5.png",
        "6.png" ,
        "7.png",
        "8.png",
        "9.png",
        "10.png",
        "11.png"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageNameArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DemoCollectionViewCell", for: indexPath) as? DemoCollectionViewCell{
            cell.imageOutlet.image = UIImage(named: imageNameArray[indexPath.row]) ?? UIImage()

            //image[indexPath.row]

            return cell
        }else{
            return UICollectionViewCell()
        }
    }
}

