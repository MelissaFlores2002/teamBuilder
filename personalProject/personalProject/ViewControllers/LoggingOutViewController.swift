//
//  LoggingOutViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 8/1/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//
import Foundation
import UIKit
import Firebase
import FirebaseAuth
import FirebaseUI
import FirebaseDatabase

class LoggingOutViewController: UIViewController {

    @IBOutlet weak var logoutButton: UIButton!
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        do {
            UserDefaults.standard.set(nil, forKey: Constants.UserDefaults.currentUser)
            try Auth.auth().signOut()
//            print("This should be executed.")
//            try functionWhichMightFail()
//            print("This will be executed if things went well.")
        } catch let logoutError {
            print("Here is the error. Go handle it!")
            print(logoutError)
        }
        
        
        if let parentVc = self.tabBarController?.presentingViewController {
            parentVc.dismiss(animated: true)
        } else {
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
        }
//        dismiss(animated: true, completion: nil)
    }
    
//    func functionWhichMightFail() throws {
//        performSegue(withIdentifier: "loginSegue", sender: self)
//    }
//

    @IBOutlet weak var cancelButton: UIButton!
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.layer.cornerRadius = 6
        cancelButton.layer.cornerRadius = 6


        // Do any additional setup after loading the view.
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoggingOutViewController: FUIAuthDelegate{
    
}
