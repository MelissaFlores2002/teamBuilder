//
//  NewProjectViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 8/1/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class NewProjectViewController: UIViewController {

    let user = User.current// try! JSONDecoder().decode(User.self, from: (UserDefaults.standard.value(forKey: Constants.UserDefaults.currentUser) as! Data))
   
    @IBOutlet weak var newProjectTitle: UILabel!
    @IBOutlet weak var nameTitleLabel: UILabel!
    @IBOutlet weak var inputNameTextField: InputNumberTextField!
    @IBOutlet weak var whoIsNeededTitleLabel: UILabel!
    @IBOutlet weak var inputWhoYouNeedTextField: InputNumberTextField!
    @IBOutlet weak var projectDescriptionTitleLabel: UILabel!
    @IBOutlet weak var inputProjectDescriptionTextField: InputNumberTextField!
    @IBOutlet weak var whyTitleLabel: UILabel!
    @IBOutlet weak var locationTextField: InputNumberTextField!
    @IBOutlet weak var locationTitleLabel: UILabel!
    @IBOutlet weak var inputWhy: InputNumberTextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        self.tabBarController!.selectedIndex = 1
    }
    @IBOutlet weak var confirmButton: UIButton!
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
        ProjectService.create(for: Project(name: inputNameTextField.text!, location: locationTextField.text!, description: inputProjectDescriptionTextField.text!, why: inputWhy.text!, whoIsNeeded: inputWhoYouNeedTextField.text!, creatorUsername: user.username, phoneNumber: user.phoneNumber)) {
            success in
            if success == true {
                self.tabBarController!.selectedIndex = 1
                self.inputNameTextField.text = " "
                self.locationTextField.text = " "
                self.inputProjectDescriptionTextField.text = " "
                self.inputWhoYouNeedTextField.text = " "
                self.inputWhy.text = " "
            } else{
                assertionFailure("somethint went wrong in the ProjectService.create funciton")
            }
        }
//        self.performSegue(withIdentifier: "BackToMain", sender: self)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        inputWhoYouNeedTextField.doneButtonPressed = {
            if self.inputWhoYouNeedTextField.isFirstResponder {
                self.inputWhoYouNeedTextField.resignFirstResponder()
            }
        }
        inputWhy.doneButtonPressed = {
            if self.inputWhy.isFirstResponder {
                self.inputWhy.resignFirstResponder()
            }
        }
        inputProjectDescriptionTextField.doneButtonPressed = {
            if self.inputProjectDescriptionTextField.isFirstResponder {
                self.inputProjectDescriptionTextField.resignFirstResponder()
            }
        }
        locationTextField.doneButtonPressed = {
            if self.locationTextField.isFirstResponder {
                self.locationTextField.resignFirstResponder()
            }
        }
        inputNameTextField.doneButtonPressed = {
            if self.inputNameTextField.isFirstResponder {
                self.inputNameTextField.resignFirstResponder()
            }
        }
        
        cancelButton.layer.cornerRadius = 6
        confirmButton.layer.cornerRadius = 6
        inputNameTextField.text = " "
        locationTextField.text = " "
        inputProjectDescriptionTextField.text = " "
        inputWhoYouNeedTextField.text = " "
        inputWhy.text = " "
        // Do any additional setup after loading the view.
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
