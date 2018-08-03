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


struct ProjectService {

    let currentUser = User.current
    
    
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
