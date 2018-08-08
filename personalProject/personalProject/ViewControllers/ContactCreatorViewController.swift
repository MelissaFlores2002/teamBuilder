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
    var proj: Project?
    @IBOutlet weak var creatorName: UILabel!
    @IBOutlet weak var creatorPhonenumber: UILabel!
    @IBOutlet weak var logoImage: UIImageView!
    
//    func dataAppear () {
//     ProjectService.projects(completion: )
//    }
//    
    func showing(project: Project) {
        self.creatorName.text = project.creatorUsername
        self.creatorPhonenumber.text = project.phoneNumber
    }
    override func viewDidLoad() {
        super.viewDidLoad()
backButton.layer.cornerRadius = 6
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard let project = proj else { return }
        self.showing(project: project)
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
