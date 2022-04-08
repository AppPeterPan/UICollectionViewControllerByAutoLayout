//
//  PrinceCollectionViewController.swift
//  Demo
//
//  Created by Peter Pan on 2022/4/8.
//

import UIKit


class PrinceCollectionViewController: UICollectionViewController {
    let princes = (0...20).map { Prince(name: "小王子\($0)號", image: "pic\($0)") }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return princes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PrinceCollectionViewCell.reuseIdentifier, for: indexPath) as! PrinceCollectionViewCell
        let prince = princes[indexPath.item]
        cell.imageView.image = UIImage(named: prince.image)
        
        return cell
    }
    
    
}
