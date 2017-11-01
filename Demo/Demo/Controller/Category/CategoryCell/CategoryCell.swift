//
//  CategoryCell.swift
//  Demo
//
//  Created by center12 on 9/26/17.
//  Copyright © 2017 center12. All rights reserved.
//

import Foundation
import UIKit

class CategoryCell: UITableViewCell {
  //MARK: Local variables
  var categorys: [String] = []
  
  //MARK: view controller

  
}

//MARK: extension UICollectionViewDelegate
extension CategoryCell: UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    if let cell = collectionView.cellForItem(at: indexPath) as? CategoryCollectionCell {
      var imageName = self.categorys[indexPath.row]
      imageName += cell.chekSelected ? "_unselected" : "_selected"

      cell.chekSelected = !cell.chekSelected;
      cell.categoryImage = UIImage(named: imageName)
    }
  }
}

//MARK: extension UICollectionViewDataSource
extension CategoryCell: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return categorys.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollection", for: indexPath)
    if let collectionCell = cell as? CategoryCollectionCell {
      var imageName = self.categorys[indexPath.row]
      imageName += !collectionCell.chekSelected ? "_unselected" : "_selected"
      collectionCell.categoryImage = UIImage(named: imageName)
    }
    return cell
  }
}

//MARK: extension UICollectionViewDelegateFlowLayout
extension CategoryCell: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellsAcross: CGFloat = CGFloat(self.categorys.count / 2)
    let spaceBetweenCells: CGFloat = 10
    let dim = (collectionView.bounds.width - (cellsAcross - 1) * spaceBetweenCells) / cellsAcross
    
    return CGSize(width: dim, height: dim)
  }
}
