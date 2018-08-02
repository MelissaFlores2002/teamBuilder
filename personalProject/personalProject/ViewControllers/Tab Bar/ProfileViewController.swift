//
//  ProfileViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 8/1/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
   
    @IBOutlet weak var profileTitleLabel: UILabel!
    @IBOutlet weak var yourProjectsAndRequestsOnThemLabel: UILabel!
    @IBOutlet weak var addedProjectsAndRequestedLabel: UILabel!
    @IBOutlet weak var collectionViewYourProjects: UICollectionView!
    @IBOutlet weak var collectionViewAddedProjects: UICollectionView!
    @IBOutlet weak var logoutButton: UIButton!
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
    
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
