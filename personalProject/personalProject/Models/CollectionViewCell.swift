//
//  CollectionViewCell.swift
//  personalProject
//
//  Created by Melissa Flores on 7/27/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var nameOfTheProject: UILabel!
    @IBOutlet weak var why: UILabel!
    @IBOutlet weak var who: UILabel!
    @IBOutlet weak var moreInfoButton: UIButton!
 
    @IBAction func moreInfoButtonPressed(_ sender: UIButton) {
    }
    
    
    
}
