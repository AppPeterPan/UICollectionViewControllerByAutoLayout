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
        
        configureCellSize()
    }
    
    func configureCellSize() {
        let itemSpace: Double = 4
        let columnCount: Double = 3
        let flowLayout = collectionViewLayout as? UICollectionViewFlowLayout
        let width = floor((collectionView.bounds.width - itemSpace * (columnCount-1)) / columnCount)
        flowLayout?.itemSize = CGSize(width: width, height: width)
        flowLayout?.estimatedItemSize = .zero
        flowLayout?.minimumInteritemSpacing = itemSpace
        flowLayout?.minimumLineSpacing = itemSpace
        
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
