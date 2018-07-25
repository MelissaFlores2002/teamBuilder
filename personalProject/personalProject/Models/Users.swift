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
    private static var _current: User?
    
    static var current: User {
        guard let currentUser = _current else {
            fatalError("Error: current user does not exist")
        }
        return currentUser
    }
    
    init(uid: String, username: String) {
        self.uid = uid
        self.username = username
    }
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String: Any], let username = dict["username"] as? String else { return nil }
        
        self.uid = snapshot.key
        self.username = username
    }
}
