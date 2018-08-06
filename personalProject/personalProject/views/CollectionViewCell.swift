//
//  CollectionViewCell.swift
//  personalProject
//
//  Created by Melissa Flores on 8/1/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleOfProjectLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var whoIsNeededLabel: UILabel!
    @IBOutlet weak var whyLabel: UILabel!
    @IBOutlet weak var whysLabel: UILabel!
    @IBOutlet weak var takeACloserLookButton: UIButton!
    @IBAction func takeACloserLookButtonPressed(_ sender: UIButton) {
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        ProjectService.projects(for: Project.init(name: titleOfProjectLabel.text!, location: locationLabel.text!, description: " ", why: whysLabel.text!, whoIsNeeded: whoIsNeededLabel.text!, creatorUsername: " ")) { (Project) in
//    }
        }
    }
        
        //    ProjectService.create(for: Project(name: inputNameTextField.text!, location: locationTextField.text!, description: inputProjectDescriptionTextField.text!, why: inputWhy.text!, whoIsNeeded: inputWhoYouNeedTextField.text!, creatorUsername: user.username))
    
//
//    static func labeledProjects(completion:  _ name: titleOfProjectlabel.label!, _ location: locationLabel.label, _ description: nil!, _ why: whysLabel.label!, _ whoIsNeeded: whoIsNeededLabel.label!, _ creatorUsername: nil!  ([Project()]) -> Void){



