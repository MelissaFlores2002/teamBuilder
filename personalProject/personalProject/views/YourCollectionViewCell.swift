//
//  YourCollectionViewCell.swift
//  personalProject
//
//  Created by Melissa Flores on 8/2/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class YourCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nameOfYourProjectLabel: UILabel!
    @IBOutlet weak var takeACloserLookButton: UIButton!
    @IBAction func takeACloserLookButtonPressed(_ sender: UIButton) {
    }
        var onButtonTapped: ((YourCollectionViewCell) -> Void)? = nil
        
        weak var delegate: CollectionViewCellDelegate?
        override func awakeFromNib() {
            super.awakeFromNib()
            takeACloserLookButton.layer.cornerRadius = 6
        
    }
    
}
