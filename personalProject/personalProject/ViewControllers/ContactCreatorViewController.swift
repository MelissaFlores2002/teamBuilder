//
//  ContactCreatorViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 8/8/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class ContactCreatorViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    @IBAction func backButtonPressed(_ sender: UIButton)
    {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var creatorName: UILabel!
    @IBOutlet weak var creatorPhonenumber: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
//    func dataAppear () {
////        ProjectService.projects(completion: <#T##([Project]) -> Void#>)
//    }
//    
    
    override func viewDidLoad() {
        super.viewDidLoad()
backButton.layer.cornerRadius = 6
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
