//
//  PostService.swift
//  personalProject
//
//  Created by Melissa Flores on 8/2/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import Foundation
import FirebaseStorage
import FirebaseDatabase

var projnum: Int = 0

struct ProjectService {
    
    
    
    //    static func create(  :) {
    let user = try! JSONDecoder().decode(User.self, from: UserDefaults.standard.value(forKey: "currentUser") as! Data)
    let currentUser = User.current
    
    
    static func create(for project: Project, completion: @escaping (Bool) -> Void) {
        let addRef = Database.database().reference().child("project").childByAutoId()
        addRef.observeSingleEvent(of: .value, with: { (snapshot) in
            let projectUID = snapshot.key
            let userRef = Database.database().reference().child("users").child(User.current.uid)
            let newDict: [String: Any] = ["phoneNumber": User.current.phoneNumber, "username": User.current.username]
            userRef.updateChildValues(newDict, withCompletionBlock: { (error, ref) in
                if let error = error {
                    print(error.localizedDescription)
                }
            })
            addRef.updateChildValues(project.toDictionary())
            let projectRef = userRef.child("projectUIDs")
            
            projectRef.updateChildValues([projectUID: "1"])
            
            { error, ref in
                if error == nil {
                    completion(true)
                    
                } else {
                    completion(false)
                }
            }
        })
    }
    
    static func projects(completion: @escaping ([Project]) -> Void) {
        let ref = Database.database().reference().child("project")
        
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            guard let snapshot = snapshot.children.allObjects as? [DataSnapshot] else {
                return completion([])
            }
            
            let proj = snapshot.reversed().compactMap(Project.init)
            completion(proj)
        })
    }
    static func flag(_ project: Project) {
        guard let projectKey = project.key else { return }
        let flaggedPostRef = Database.database().reference().child("flaggedPosts").child(projectKey)

        let flaggedDict = ["name" : project.name,
                           "location" : project.location,
                           "description" : project.description,
                           "why" : project.why,
                           "whoIsNeeded" : project.whoIsNeeded,
                           "creatorUID": project.creatorUsername,
                           "reporter_uid": User.current.uid,
                           "phoneNumber": project.phoneNumber]
        flaggedPostRef.updateChildValues(flaggedDict)
        let flagCountRef = flaggedPostRef.child("flag_count")
        flagCountRef.runTransactionBlock({ (mutableData) -> TransactionResult in
            let currentCount = mutableData.value as? Int ?? 0
            mutableData.value = currentCount + 1
            return TransactionResult.success(withValue: mutableData)
        })
    }
    //    static func show(labelName: UILabel, labelLocation: UILabel, labelDescription: UILabel, labelWhy: UILabel, labelWhoIsNeeded: UILabel, labelCreatorUID: UILabel, labelUsername: UILabel, labelPhoneNumber: UILabel){
    //        let addRef = Database.database().reference().child("project")
    //        addRef.observeSingleEvent(of: .value) { (snapshot) in
    //        let retreive = addRef.value(forKey: "\(User.current)project\(projnum)")
    //       }
    //    }
    
    
    //    let project = Project()
    //
    //    let rootRef = Database.database().reference()
    //
    //    let newPostRef = rootRef.child("posts").child(currentUser.uid).childByAutoId()
    //
    //    let newPostKey = newPostRef.key
    //
    //
    //    UserService(for: currentUser) { in
    //
    //    var updatedData: [String : Any] = ["\(currentUser.uid)/\(newPostKey)" : CollectionViewCell]
    //    }
    //
    //    let postDict = self.post.dictValue
    //    updatedData["posts/\(currentUser.uid)/\(newPostKey)"] = postDict
    //
    //    rootRef.updateChildValues(updatedData)
    //
    //    static func create(forKey postKey: )
    //
    //
    //
    //    static func show(forKey postKey: String, posterUID: String, completion: @escaping (Post?) -> Void) {
    //        let ref = Database.database().reference().child("posts").child(posterUID).child(postKey)
    //
    //        ref.observeSingleEvent(of: .value, with: { (snapshot) in
    //            guard let post = Post(snapshot: snapshot) else {
    //                return completion(nil)
    //            }
    //
    //                completion(post)
    //            }
    //        })
    //    }
}

