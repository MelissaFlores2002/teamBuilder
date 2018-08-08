//
//  ProfileViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 8/1/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
////    return AddedCollectionViewCell
//
//
//    }
    let user = try! JSONDecoder().decode(User.self, from: UserDefaults.standard.value(forKey: "currentUser") as! Data)

   
    @IBAction func yourProjectsAndAddedTeams(_ sender: UISegmentedControl) {
        let ref = Database.database().reference().child("users").child(user.uid).child("projects")
        let ref2 = Database.database().reference().child("project").child(project.uid).child("projects")
        ref.child("yourProjects").observeSingleEvent(of: .value) { (snap) in
            let value = snap.value as! [String: Any]
            
        }
    }
    @IBOutlet weak var chooseBetweenYourAndAdded: UISegmentedControl!
    @IBOutlet weak var profileTitleLabel: UILabel!
    @IBOutlet weak var collectionViewAddedProjects: UICollectionView!
    @IBOutlet weak var logoutButton: UIButton!
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
    
    }
    
    
    var newIndexPath: Int!
    
    var currentItems = [Project]() {
        didSet {
            self.collectionViewAddedProjects.reloadData()
        }
    }
    
    var addItems = [Project]()
    
    var yourItems = [Project]()

    
    
    @objc func buttonPressed(_ sender: UIButton) {
        newIndexPath = sender.tag
        performSegue(withIdentifier: "moreInfo", sender: self)
    }
    let reuseIdentifier = "yourCell"
    func collectionView(_ collectionViewYourProjects: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.currentItems.count
    }
    func collectionView(_ collectionViewYourProjects: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewYourProjects.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath ) as! AddedCollectionViewCell

        let row = indexPath.row
        let projects = currentItems[row]

        cell.nameOfProjectLabel.text = projects.name
        cell.takeACloserLookButton.tag = indexPath.row
        cell.takeACloserLookButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
//        cell.nameOfYourProjectLabel.text = project
//        cell.nameOfYourProjectLabel.text = project.name
        return cell
    }
    
    // TODO: swift case in "numberOfSections" and "cellForItem" based on the segmented controller
    
    func numberOfSections(in collectionViewAddedProjects: UICollectionView) -> Int {
       
//        self.addOrYour(sender: true)
//        switch yourProjectsAndAddedTeams {
//            case sender.0:
//            
//            break;
//            
//            case 1:
//            
//            break;
//        }
    
        
        return 1
    }
    func addedCollectionView(_ collectionViewAddedProjects: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionViewAddedProjects.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath ) as! AddedCollectionViewCell
    
        let row = indexPath.row
        let project = currentItems[row]
        
        cell.nameOfProjectLabel.text = project.name
        cell.takeACloserLookButton.tag = indexPath.row
        cell.takeACloserLookButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        
    return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.item)!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.layer.cornerRadius = 6
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "moreInfo":
            guard let indexPath = newIndexPath else { return }
            let proj = currentItems[indexPath]
            let destination = segue.destination as! AddSomeonesProjectViewController
            destination.proj = proj
            print(destination.proj!)
        default :
            print("unexpected segue identifier")
        }
    }
    func addOrYour (sender: UISegmentedControl, path: Int) -> Project? {
        switch sender.selectedSegmentIndex {
            
        case 0:
            return Project(name: self.yourItems[path].name, location: self.yourItems[path].location, description: self.yourItems[path].description, why: self.yourItems[path].why, whoIsNeeded: self.yourItems[path].whoIsNeeded, creatorUsername: self.yourItems[path].creatorUsername)
        case 1:
            return Project(name: self.yourItems[path].name, location: self.yourItems[path].location, description: self.yourItems[path].description, why: self.yourItems[path].why, whoIsNeeded: self.yourItems[path].whoIsNeeded, creatorUsername: self.yourItems[path].creatorUsername)
        default:
            print("failure")
            return nil
        }
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
//    override func viewDidLoad() {
//        super.viewDidLoad()

        // Do any additional setup after loading the view
    
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
