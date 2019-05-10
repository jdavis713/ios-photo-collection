//
//  ThemeSelectionViewController.swift
//  Photo Collection
//
//  Created by Jordan Davis on 5/9/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

    //MARK: -Action
 
    @IBAction func selectDarkTheme(_ sender: Any) {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectBlueTheme(_ sender: Any) {
        themeHelper?.setThemePreferenceToBlue()
        dismiss(animated: true, completion: nil)
    }
    
    
    
    //MARK: -Properties
    
    var themeHelper: ThemeHelper?
}
