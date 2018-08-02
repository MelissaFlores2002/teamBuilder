//
//  CreateUsernameViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 7/24/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase
import FirebaseAuth


class CreateUsernameViewController: UIViewController {

    @IBOutlet weak var usernameTextField: InputNumberTextField!
    @IBOutlet weak var nextButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 50
        
        usernameTextField.doneButtonPressed = {
            if self.isFirstResponder {
                self.resignFirstResponder()
            }
        }
    }



    @IBAction func nextButtonPressed(_ sender: UIButton) {
        guard let firUser = Auth.auth().currentUser,
            let username = usernameTextField.text,
            !username.isEmpty else { return }
//        let userAttrs = ["username": username]
//        let ref = Database.database().reference().child("users").child(firUser.uid)
//        ref.setValue(userAttrs) { (error, ref) in
//            if let error = error {
//                assertionFailure(error.localizedDescription)
//                return
//            }
//            ref.observeSingleEvent(of: .value, with: { (snapshot) in
//                let user = User(snapshot: snapshot)
//            }
//            )
            UserService.create(firUser, username: username) { (user) in
                guard let _ = user else {
                    return
                }
                
            }
        
//        let storyboard = UIStoryboard(name: "Main", bundle: .main)
//       if let initialViewController = storyboard.instantiateInitialViewController() {
//       self.view.window?.rootViewController = initialViewController
//        self.view.window?.makeKeyAndVisible()
//         }
        self.performSegue(withIdentifier: "Main", sender: self)
    
    
        
    }

}


