//
//  PhotoDetailViewController.swift
//  Photo Collection
//
//  Created by Jordan Davis on 5/9/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    //MARK: -Actions
    @IBAction func addPhotoButtonPressed(_ sender: Any) {
        print("photo added")
    }
    @IBAction func saveButtonPressed(_ sender: Any) {
        print("saved")
    }
    
    
    
    //MARK: -Properties
    
    @IBOutlet var imageDetailView: UIImageView!
    @IBOutlet var imageDescription: UITextField!
    
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?

}
