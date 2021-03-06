//
//  Users.swift
//  personalProject
//
//  Created by Melissa Flores on 7/24/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import Foundation
import FirebaseDatabase.FIRDataSnapshot

class User: Codable {
    let uid: String
    let username: String
    let phoneNumber: String

    private static var _current: User?
    
    static var current: User {
        guard let currentUser = _current else {
            fatalError("Error: current user does not exist")
        }
        return currentUser
    }
    
    
//    static var new: User {
//        guard let newUser = _newest else {
//            fatalError("Error: current user does not exist")
//        }
//        return newUser
//    }
    
    init(uid: String, username: String, phoneNumber: String) {
        self.uid = uid
        self.username = username
        self.phoneNumber = phoneNumber
    }
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String: Any], let username = dict["username"] as? String, let phoneNumber = dict["phoneNumber"] as? String else { return nil }
        
        self.uid = snapshot.key
        self.username = username
        self.phoneNumber = phoneNumber
    }
    
    static func setCurrent(_ user: User, writeToUserDefaults: Bool = false) {
        if writeToUserDefaults {
            if let data = try? JSONEncoder().encode(user) {
                UserDefaults.standard.set(data, forKey: Constants.UserDefaults.currentUser)
            }
        }
        _current = user
    }
    
//    static func createDefault(_user: User, newUserDefaults: Bool = true) {
//        if newUserDefaults {
//            if let data = try? JSONEncoder().encode(<#T#>) {
//                UserDefaults.standard.set(data, forKey: Constants.UserDefaults)
//            }
//        }
//    }
}
