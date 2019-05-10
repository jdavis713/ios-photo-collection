//
//  ThemeSelectionViewController.swift
//  Photo Collection
//
//  Created by Jordan Davis on 5/9/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: -Action
 
    @IBAction func selectDarkTheme(_ sender: Any) {
    }
    
    @IBAction func selectBlueTheme(_ sender: Any) {
    }
    
    
    
    //MARK: -Properties
    
    var themeHelper: ThemeHelper?
}
