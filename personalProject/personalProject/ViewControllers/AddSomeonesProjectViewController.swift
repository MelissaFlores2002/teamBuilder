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
    @IBOutlet weak var creatorName: UILabel!
    var items = [Project]()
    @IBOutlet weak var addRequestButton: UIButton!
    @IBAction func addRequestButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    var proj: Project?
    @IBOutlet weak var contactButton: UIButton!
    @IBAction func contactButtonPressed(_ sender: UIButton) {
    }
    
    @IBOutlet weak var flagingButton: UIButton!
    
    @IBAction func flaggingButtonPressed(_ sender: UIButton) {
        
        //        guard let indexPath = self.indexPath(for: AddSomeonesProjectViewController) else { return }
        //        let projs = Project[indexPath.section]
        //        let proj = projs.projects
        //
        //        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        //
        //        if proj.uid != User.current.uid {
        //            let flagAction = UIAlertAction(title: "Report as Inappropriate", style: .default) { _ in
        //                print("report post")
        //            }
        //
        //            alertController.addAction(flagAction)
        //        }
        //
        //        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        //        alertController.addAction(cancelAction)
        //
        //        present(alertController, animated: true, completion: nil)
        //    }
    }
    
    
    func showing(project: Project) {
        self.projectNameLabel.text = project.name
        self.locationAnsweredLabel.text = project.location
        self.whoIsNeededAnsweredLabel.text = project.whoIsNeeded
        self.whyExplanationLabel.text = project.why
        self.projectDescrition.text = project.description
        self.creatorName.text = project.creatorUsername
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        cancelButton.layer.cornerRadius = 6
        addRequestButton.layer.cornerRadius = 6
        contactButton.layer.cornerRadius = 6
        
        //        self.showing(project: items[])
        //        ProjectService.projects { (projectsFetched) in
        //            self.items = self.showing(project: Project)
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
    
    func handleOptionsButtonTap(from button: UIButton) {
    }
}
/*
 // MARK: - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
 // Get the new view controller using segue.destinationViewController.
 // Pass the selected object to the new view controller.
 }
 */
