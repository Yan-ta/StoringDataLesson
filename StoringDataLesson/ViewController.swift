//
//  ViewController.swift
//  StoringDataLesson
//
//  Created by Ян Таше on 26.05.2022.
//

import UIKit



enum userDefaultKeys {
    static let userSettings = "userSettings"
}

class ViewController: UIViewController {

    var userDefaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let settings = UserSettings(authorized: true)
        
        let settingsData = NSKeyedArchiver()
        
        settings.isAuthorized = true

        userDefaults.set(settings, forKey: userDefaultKeys.userSettings)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if let userSettings = userDefaults.object(forKey: userDefaultKeys.userSettings) as? UserSettings {
            print(userSettings)
        }
        
    }


}

