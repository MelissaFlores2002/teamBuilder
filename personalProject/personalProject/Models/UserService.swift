//
//  UserService.swift
//  personalProject
//
//  Created by Melissa Flores on 7/24/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import Foundation
import FirebaseAuth.FIRUser
import FirebaseDatabase

struct UserService {
    static func show(forUID uid: String, completion: @escaping (User?) -> Void) {
        let ref = Database.database().reference().child("users").child(uid)
        ref.observeSingleEvent(of: .value, with: { (snapshot) in
            guard let user = User(snapshot: snapshot) else {
                return completion(nil)
            }
            completion(user)
        })
    }
    
    
    static func create(_ firUser: FIRUser, username: String, phoneNumber: String, completion: @escaping (User?) -> Void) {
        let userAttrs = ["username": username, "phoneNumber": phoneNumber]
        
        let ref = Database.database().reference().child("users").child(firUser.uid)
        ref.setValue(userAttrs) { (error, ref) in
            if let error = error {
                print(error.localizedDescription)
                return completion(nil)
            }
            
            ref.observeSingleEvent(of: .value, with: { (snapshot) in
                let user = User(snapshot: snapshot)
                completion(user)
            })
        }
        
        
    }
    
    static func addOrCreateProj(_ currentUID: String, yourProj: Bool, projectUID: String) -> [String: Any] {
        
        let ref = Database.database().reference().child("project").child(projectUID)
        
        let teamsDict = ["yourProj": yourProj, "projectUID": projectUID, "currentUID": currentUID] as [String : Any]
        return teamsDict
        
        
    }
    
//    static func posts(for user: User, completion: @escaping ([Post]) -> Void) {
//        let ref = Database.database().reference().child("posts").child(user.uid)
//        ref.observeSingleEvent(of: .value, with: { (snapshot) in
//            guard let snapshot = snapshot.children.allObjects as? [DataSnapshot] else {
//                return completion([])
//            }
//
//            let dispatchGroup = DispatchGroup()
//
//            let posts: [Post] = snapshot.reversed().compactMap {
//                guard let post = Post(snapshot: $0)
//                    else { return nil }
//
//                dispatchGroup.enter()
//
//                LikeService.isPostLiked(post) { (isLiked) in
//                    post.isLiked = isLiked
//
//                    dispatchGroup.leave()
//                }
//
//                return post
//            }
//
//            dispatchGroup.notify(queue: .main, execute: {
//                completion(posts)
//            })
//        })
//    }
}
