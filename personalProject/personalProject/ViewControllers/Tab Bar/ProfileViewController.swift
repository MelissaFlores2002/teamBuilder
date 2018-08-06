//
//  ProfileViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 8/1/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    @IBOutlet weak var profileTitleLabel: UILabel!
    @IBOutlet weak var yourProjectsAndRequestsOnThemLabel: UILabel!
    @IBOutlet weak var addedProjectsAndRequestedLabel: UILabel!
    @IBOutlet weak var collectionViewYourProjects: UICollectionView!
    @IBOutlet weak var collectionViewAddedProjects: UICollectionView!
    @IBOutlet weak var logoutButton: UIButton!
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
    
    }
    
    let reuseIdentifier = "yourCell"
    var items = [" "]
    func collectionView(_ collectionViewYourProjects: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    func collectionView(_ collectionViewYourProjects: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewYourProjects.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath ) as! YourCollectionViewCell
      
        let row = indexPath.row
        let project = items[row]
//        cell.nameOfYourProjectLabel.text = project
//        cell.nameOfYourProjectLabel.text = project.name
        
        
        return cell
    }
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            print("You selected cell #\(indexPath.item)!")
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            logoutButton.layer.cornerRadius = 6
        }
        


    
//    let reuseIdentifier1 = "addCell"
//    var items1 = [" "]
//    func collectionView1(_ collectionViewAddedProjects: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return self.items1.count
//    }
//    func collectionView1(_ collectionViewAddedProjects: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionViewAddedProjects.dequeueReusableCell(withReuseIdentifier: reuseIdentifier1, for: indexPath as IndexPath) as! CollectionViewCell
//        //        cell.nameOfTheProject.text = self.items[indexPath.item]
//        //        cell.backgroundColor = UIColor.blue
//        return cell
//    }
//}
//func collectionView(_ collectionViewAddedProject: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//
//    print("You selected cell #\(indexPath.item)!")
//}

    
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    

  
    
    
    
    
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
