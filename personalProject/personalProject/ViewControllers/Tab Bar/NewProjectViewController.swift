//
//  NewProjectViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 8/1/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class NewProjectViewController: UIViewController {
    
    let user = try! JSONDecoder().decode(User.self, from: UserDefaults.standard.value(forKey: "currentUser") as! Data)
   
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
    
        
    }
    @IBOutlet weak var confirmButton: UIButton!
   
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
        ProjectService.create(for: Project(name: inputNameTextField.text!, location: locationTextField.text!, description: inputProjectDescriptionTextField.text!, why: inputWhy.text!, whoIsNeeded: inputWhoYouNeedTextField.text!, creatorUID: user.username))
        
        self.performSegue(withIdentifier: "BackToMain", sender: self)
    }
    
    
  
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        cancelButton.layer.cornerRadius = 10
        confirmButton.layer.cornerRadius = 10

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
