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
    @IBOutlet weak var phoneNumber: InputNumberTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 35
        
        usernameTextField.doneButtonPressed = {
            if self.usernameTextField.isFirstResponder {
                self.usernameTextField.resignFirstResponder()
            }
        }
        phoneNumber.doneButtonPressed = {
            if self.phoneNumber.isFirstResponder {
                self.phoneNumber.resignFirstResponder()
            }
        }
        
    }
    
    
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        guard let firUser = Auth.auth().currentUser,
            let username = usernameTextField.text,
            !username.isEmpty,
            let phonenumber = phoneNumber.text,
            !phonenumber.isEmpty
            else { return }
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
        UserService.create(firUser, username: username, phoneNumber: phonenumber) { (user) in
            guard let user = user else {
                return
            }
            
            User.setCurrent(user, writeToUserDefaults: true)
            
            if let parentVc = self.navigationController?.presentingViewController {
                parentVc.dismiss(animated: true)
            } else {
                self.performSegue(withIdentifier: "mainSegue", sender: nil)
            }
//            self.performSegue(withIdentifier: "Main", sender: self)
        }
        
        //        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        //       if let initialViewController = storyboard.instantiateInitialViewController() {
        //       self.view.window?.rootViewController = initialViewController
        //        self.view.window?.makeKeyAndVisible()
        //         }
        
        
        
    }
    
}



