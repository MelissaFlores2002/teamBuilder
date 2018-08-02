//
//  AddSomeonesProjectViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 8/1/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class AddSomeonesProjectViewController: UIViewController {

    @IBOutlet weak var addTitle: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var projectNameLabel: UILabel!
    @IBOutlet weak var whoIsNeededQuestionLabel: UILabel!
    @IBOutlet weak var whoIsNeededAnsweredLabel: UILabel!
    @IBOutlet weak var projectDesciptionTitleLabel: UILabel!
    @IBOutlet weak var projectDescrition: UILabel!
    @IBOutlet weak var whyQuestionLabel: UILabel!
    @IBOutlet weak var whyExplanationLabel: UILabel!
    @IBOutlet weak var locationTitleLabel: UILabel!
    @IBOutlet weak var locationAnsweredLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBAction func cancelButtonPressed(_ sender: UIButton) {

    dismiss(animated: true, completion: nil)
}


@IBOutlet weak var addRequestButton: UIButton!

@IBAction func addRequestButtonPressed(_ sender: UIButton) {

    dismiss(animated: true, completion: nil)
}

    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cancelButton.layer.cornerRadius = 50
        addRequestButton.layer.cornerRadius = 50

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
