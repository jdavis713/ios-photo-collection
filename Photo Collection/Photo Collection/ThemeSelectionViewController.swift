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
    @IBAction func darkThemeSelected(_ sender: Any) {
        print("Turn the lights off")
    }
    @IBAction func blueThemeSelected(_ sender: Any) {
        print("Why so sad?")
    }
    
    //MARK: -Properties
    
    
}
