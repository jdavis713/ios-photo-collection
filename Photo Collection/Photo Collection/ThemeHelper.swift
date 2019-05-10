//
//  ThemeHelper.swift
//  Photo Collection
//
//  Created by Jordan Davis on 5/9/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

class ThemeHelper {
    
    init() {
        if themePreference == nil {
            setThemePreferenceToDark()
        }
    }
    
    func setThemePreferenceToDark() {
        let userDefaults = UserDefaults.standard
        userDefaults.set("Dark", forKey: themePreferenceKey)
    }
    
    func setThemePreferenceToBlue() {
        let userDefaults = UserDefaults.standard
        userDefaults.set("Blue", forKey: themePreferenceKey)
    }
    
    
    var themePreference: String? {
        let userDefaults = UserDefaults.standard
        let themPreference = userDefaults.string(forKey: themePreferenceKey)
        return themPreference
    }
    
    //MARK: - Properties
    
    let themePreferenceKey: String = ""
    
}
