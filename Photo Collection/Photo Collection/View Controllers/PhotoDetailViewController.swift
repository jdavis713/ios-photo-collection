//
//  PhotoDetailViewController.swift
//  Photo Collection
//
//  Created by Jordan Davis on 5/9/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func setTheme() {
        guard let themePreference = themeHelper?.themePreference else { return }
        
        if themePreference == "Dark" {
            view.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.1450980392, blue: 0.3333333333, alpha: 1)
        } else if themePreference == "Blue" {
            view.backgroundColor = #colorLiteral(red: 0.314305226, green: 0.5060642936, blue: 0.7890360618, alpha: 1)
        }
    }
    
    private func updateViews() {
        setTheme()
        guard let photo = photo else { return }
        
        imageDetailView.image = UIImage(data: photo.imageData)
        imageDescription.text = photo.title
    }
    
    //MARK: -Actions
    @IBAction func addPhotoButtonPressed(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
        imagePicker.delegate = self
    }
    
    func imagePickerController( _ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
        imageDetailView.image = pickedImage
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        guard let title = imageDescription.text, !title.isEmpty,
        let image = imageDetailView.image,
            let imageData = image.pngData() else { return }
        
        if let photo = photo {
            photoController?.updatePhoto(photo: photo, imageData: imageData, title: title)
        } else {
            photoController?.createPhoto(imageData: imageData, title: title)
        }
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: -Properties
    
    @IBOutlet var imageDetailView: UIImageView!
    @IBOutlet var imageDescription: UITextField!
    
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?

}
