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
    
    init(name: String, location: String, description: String, why: String, whoIsNeeded: String) {
        self.name = name
        self.location = location
        self.description = description
        self.why = why
        self.whoIsNeeded = whoIsNeeded
    }
    
    init(snapshot){
        
    }
    
    func toDictionary() -> [String : String] {
     return ["name" : self.name,
             "location" : self.location,
             "description" : self.description,
             "why" : self.why,
             "whoIsNeeded" : self.whoIsNeeded]
    
    }
}
