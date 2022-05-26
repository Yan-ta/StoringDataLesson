//
//  UserSettings.swift
//  StoringDataLesson
//
//  Created by Ян Таше on 26.05.2022.
//

import Foundation

class UserSettings: NSObject, NSCoding {
    
    var isAuthorized: Bool = false
    
    fileprivate enum UserSettings {
        static let isAuthorized = "isAuthorized"
    }
    
    init(authorized: Bool) {
        isAuthorized = authorized
    }
    
    func encode(with coder: NSCoder) {
        coder.encode(isAuthorized, forKey: UserSettings.isAuthorized)
    }
    
    required init?(coder: NSCoder) {
        isAuthorized = coder.decodeBool(forKey: UserSettings.isAuthorized)
    }
    
    
}
