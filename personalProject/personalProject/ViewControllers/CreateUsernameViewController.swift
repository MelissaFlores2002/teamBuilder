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
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nextButton.layer.cornerRadius = 6
    }
    

    @IBAction func nextButtonPressed(_ sender: UIButton) {
    guard let firUser = Auth.auth().currentUser, let username = usernameTextField.text, !username.isEmpty else { return }
        UserService.create(firUser, username: username) { (user) in
            guard user != nil else { return }
            self.view.window?.makeKeyAndVisible()
        }
        
    }
    
    
    
}


    


