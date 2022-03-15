//
//  LockViewController.swift
//  API
//
//  Created by oops on 05/02/22.
//

import UIKit

class LockViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    @IBOutlet var collectionView: UICollectionView!
    let arrData = ["hello","hi","hello","hi","hello","hi","hello","hi","hello","hi","hello","hi"]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
}
extension LockViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let lockCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LockCollectionViewCell", for: indexPath) as! LockCollectionViewCell
        lockCollectionViewCell.lbl1.text = arrData[indexPath.row]
        return lockCollectionViewCell
    }
}
