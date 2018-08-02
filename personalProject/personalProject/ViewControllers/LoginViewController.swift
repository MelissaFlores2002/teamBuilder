//
//  LoginViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 7/23/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth
import FirebaseUI
import FirebaseDatabase

typealias FIRUser = Firebase.User

class LoginViewController: UIViewController {


    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var LogInButton: UIButton!

    @IBAction func signUpButton(_ sender: UIButton) {
    guard let authUI = FUIAuth.defaultAuthUI() else { return }
        authUI.delegate = self
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
        print("SignUp!")

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        LogInButton.layer.cornerRadius = 50
        
    }
    
//    func authUI(_ authUI: FUIAuth, user: User?, error: Error?) {
//        if let error = error {
//            assertionFailure("Error signing in \(error.localizedDescription)")
//        }
//        guard let user = user else { return }
//        let userRef = Database.database().reference().child("users").child(user.uid)
//        userRef.observeSingleEvent(of: .value, with: { [unowned self] (snapshot) in
//            UserService.show(forUID: user.uid) { (user) in
//                if user != nil {
//                    self.view.window?.makeKeyAndVisible()
//                } else {
//                    self.performSegue(withIdentifier: "toCreateUsername", sender: self)
//                    print("hello \(String(describing: user))")
//                }
//            }
//        })
//    }

}


extension LoginViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        if let error = error {
            assertionFailure("Error signing in \(error.localizedDescription)")
        }

        guard let user =  authDataResult?.user
            else { return }

 let userRef = Database.database().reference().child("users").child(user.uid)
        UserService.show(forUID: user.uid) { (user) in
            if let user = user {
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
//                User.setCurrent(user, writeToUserDefaults: true)
                let initialViewController = UIStoryboard.initialViewController(for: .main)
                self.view.window?.rootViewController = initialViewController
                self.view.window?.makeKeyAndVisible()
            } else {
//                self.performSegue(withIdentifier: "Main", sender: self)
//            }
//        }
        userRef.observeSingleEvent(of: .value, with: { [unowned self] (snapshot) in
            if let _ = User(snapshot: snapshot) {
                let storyboard = UIStoryboard(name: "Main", bundle: .main)
                
                if let initialViewController = storyboard.instantiateInitialViewController() {
                    self.view.window?.rootViewController = initialViewController
                    self.view.window?.makeKeyAndVisible()
                }
            } else {
                self.performSegue(withIdentifier: Constants.Segue.toCreateUsername, sender: self)
            }
        })
    }
}
}
}
