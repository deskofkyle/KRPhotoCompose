//
//  KRPhotoComposeView.swift
//  Pods
//
//  Created by Kyle Ryan on 11/14/16.
//
//

import UIKit

public class KRPhotoComposeView: UIView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func mainView() -> KRPhotoComposeView {
        return Bundle.main.loadNibNamed("KRPhotoComposeView", owner: self, options: nil)![0] as! KRPhotoComposeView
    }

    @IBOutlet weak var collectionView: UICollectionView!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        print("I'm awake")
    }

    // MARK: UICollectionViewCellDatasource
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            1
        case 1:
            1
        case 2:
            1
        case 3:
            Model.CellManager().photoCells.count
        default:
            0
        }
        return 0
    }
    
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("delegate called")
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Model.Cell.CellType.PhotoButton.rawValue, for: indexPath) as! PhotoButtonCollectionViewCell
        } else if indexPath.section == 1 {
             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Model.Cell.CellType.PhotoButton.rawValue, for: indexPath) as! PhotoButtonCollectionViewCell
        } else if indexPath.section == 2 {
             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Model.Cell.CellType.PhotoButton.rawValue, for: indexPath) as! PhotoButtonCollectionViewCell
        } else if indexPath.section == 3 {
            return Model.CellManager().photoCells[indexPath.row] as! PhotoCollectionViewCell
        }
        return UICollectionViewCell()
    }
    
    
    public func numberOfSections(in collectionView: UICollectionView) -> Int{
        return 4
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: self.bounds.size.height / 2, height: self.bounds.size.height / 2)
        } else if indexPath.section == 1 {
            return CGSize(width: self.bounds.size.height / 2, height: self.bounds.size.height / 2)
        } else if indexPath.section == 2 {
            return CGSize(width: self.bounds.size.height, height: self.bounds.size.height / 2)
        } else if indexPath.section == 3 {
            return CGSize(width: self.bounds.size.height / 2, height: self.bounds.size.height / 2)
        }
        return CGSize()
    }
}
