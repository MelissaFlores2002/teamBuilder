//
//  InputNumberTextField.swift
//  personalProject
//
//  Created by Melissa Flores on 7/31/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class InputNumberTextField: UITextField {
    var doneButtonPressed: (() -> Void)?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let toolbar: UIToolbar = UIToolbar()
        
        let leadingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let trailingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneButtonTapped(_:)))
        toolbar.items = [leadingFlex, doneButton, trailingFlex]
        
        toolbar.sizeToFit()
        
        self.inputAccessoryView = toolbar
    }
    
    @objc private func doneButtonTapped(_ sender: UIBarButtonItem) {
        doneButtonPressed?()
    }
    
}
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

