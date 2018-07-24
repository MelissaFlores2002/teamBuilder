//
//  LoginViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 7/23/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import Foundation
import UIKit
import FirebaseAuth
import FirebaseUI
import FirebaseDatabase

class LoginViewController: UIViewController {
    override func viewDidLoad() {        
    }
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBAction func signUp(_ sender: UIButton) {
        guard let authUI = FUIAuth.defaultAuthUI()
            else { return }
        authUI.delegate = self
        let authViewController =
            authUI.authViewController()
        present(authViewController, animated: true)
          print("SignUp!")
    }
    @IBAction func logIn(_ sender: UIButton) {
        print("Welcome back!")
    }
    }
extension LoginViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        
        if let error = error {
            assertionFailure("Error signing in: \(error.localizedDescription)")
            return
        }
        guard let user = authDataResult?.user
            else {return}
        
        let userRef = Database.database().reference().child("users").child(user.uid)
        userRef.observeSingleEvent(of: .value, with: {
            (snapshot) in
            if let user = User(snapshot: snapshot) {
                print ("Welcome back, \(user.username).")
            } else {
                print("New user!")
            }
        })
    }
}
