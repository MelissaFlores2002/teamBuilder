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
    @IBOutlet weak var signUpButton: UIButton!
    @IBAction func signUpButton(_ sender: UIButton) {
    guard let authUI = FUIAuth.defaultAuthUI() else { return }
        authUI.delegate = self
        let authViewController = authUI.authViewController()
        present(authViewController, animated: true)
          print("SignUp!")

    }
    override func viewDidLoad() {
        super.viewDidLoad()
            }
    
}
extension LoginViewController: FUIAuthDelegate {
    func authUI(_ authUI: FUIAuth, user: User?, error: Error?) {
        if let error = error {
            assertionFailure("Error signing in \(error.localizedDescription)")
        }
        guard let user = user else { return }
        let userRef = Database.database().reference().child("users").child(user.uid)
userRef.observeSingleEvent(of: .value, with: { [unowned self] (snapshot) in
    UserService.show(forUID: user.uid) { (user) in
        if user != nil {
            self.view.window?.makeKeyAndVisible()
        } else {
                 self.performSegue(withIdentifier: "toCreateUsername", sender: self)
            print("hello \(String(describing: user))")
        }
    }
}
        )
}
}
