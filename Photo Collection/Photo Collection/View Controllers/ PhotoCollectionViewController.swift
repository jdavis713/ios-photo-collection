//
//  PhotosCollectionViewController.swift
//  Photo Collection
//
//  Created by Jordan Davis on 5/9/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PhotosCell"

class PhotosCollectionViewController: UICollectionViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setTheme()
        collectionView.reloadData()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AddPhoto" {
            guard let addDetailVC = segue.destination as? PhotoDetailViewController else { return }
            
            addDetailVC.photoController = photoController
            addDetailVC.themeHelper = themeHelper
            
        } else if segue.identifier == "PhotoDetail" {
            guard let photoDetailVC = segue.destination as? PhotoDetailViewController,
                let indexPath = collectionView.indexPathsForSelectedItems?.first else { return }
            let photo = photoController.photos[indexPath.item]
            
            photoDetailVC.photoController = photoController
            photoDetailVC.themeHelper = themeHelper
            photoDetailVC.photo = photo
        } else if segue.identifier == "ThemeSelect" {
            guard let themeSelectionVC = segue.destination as? ThemeSelectionViewController else { return }
            
            themeSelectionVC.themeHelper = themeHelper
        }
    }
 

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoController.photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotosCollectionViewCell
    
        let photo = photoController.photos[indexPath.item]
        cell.photo = photo
    
        return cell
    }
    
    func setTheme() {
        guard let themePreference = themeHelper.themePreference else { return }
        
        if themePreference == "Dark" {
            collectionView.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.1450980392, blue: 0.3333333333, alpha: 1)
        } else if themePreference == "Blue" {
            collectionView.backgroundColor = #colorLiteral(red: 0.314305226, green: 0.5060642936, blue: 0.7890360618, alpha: 1)
        }
    }

    //MARK: - Properties
    
    let photoController = PhotoController()
    let themeHelper = ThemeHelper()

}
