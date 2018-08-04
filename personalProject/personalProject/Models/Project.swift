//
//  Post.swift
//  personalProject
//
//  Created by Melissa Flores on 8/2/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import Foundation
import FirebaseDatabase.FIRDataSnapshot


class Project {
    var key: String?
    let name: String
    let location: String
    let description: String
    let why: String
    let whoIsNeeded: String
    let creatorUID: String
    
    init(name: String, location: String, description: String, why: String, whoIsNeeded: String, creatorUID: String) {
        self.name = name
        self.location = location
        self.description = description
        self.why = why
        self.whoIsNeeded = whoIsNeeded
        self.creatorUID = creatorUID
    }
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String: Any],
            let name = dict["name"] as? String,
            let location = dict["location"] as? String,
        let description = dict["description"] as? String,
        let why = dict["why"] as? String,
        let whoIsNeeded = dict["whoIsNeeded"] as? String,
        let creatorUID = dict["creatorUID"] as? String
        else { return nil }
        
        self.key = snapshot.key
        self.name = name
        self.location = location
        self.description = description
        self.why = why
        self.whoIsNeeded = whoIsNeeded
        self.creatorUID = creatorUID
    }
    
//
//    init(snapshot){
//    }
//
    func toDictionary() -> [String : String] {
     return ["name" : self.name,
             "location" : self.location,
             "description" : self.description,
             "why" : self.why,
             "whoIsNeeded" : self.whoIsNeeded,
             "creatorUID": self.creatorUID]
    
    }

}
