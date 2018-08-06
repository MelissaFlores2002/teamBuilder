//
//  MainViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 7/28/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit
import FirebaseDatabase


class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!

    let reuseIdentifier = "CollectionViewCell"
    var items = [Project]() {
        didSet{
            collectionView.reloadData()
        }
    }
    @objc func buttonPressed(_ sender: UIButton) {
        let openedProj = items[sender.tag]
        performSegue(withIdentifier: "moreInfo", sender: UIButton.self)
        
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell

        let row = indexPath.row
        let project = items[row]
        
        cell.titleOfProjectLabel.text = project.name
        cell.locationLabel.text = project.location
        cell.whoIsNeededLabel.text = project.whoIsNeeded
        cell.whysLabel.text = project.why
        cell.takeACloserLookButton.tag = indexPath.row
        cell.takeACloserLookButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
//        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard let identifier = segue.identifier else { return }
//
//            switch identifier {
//            case "moreInfo":
//                guard let indexPath = collectionView.indexPath else { return }
//                let proj = Project[indexPath.row]
//                let destination = segue.destination as! AddSomeonesProjectViewController
//                destination.proj = proj
//
//            default:
//                print("unexpected segue identifier")
//            }
//        }
//
//
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.item)!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        ProjectService.projects { (projectsFetched) in
            self.items = projectsFetched
        }
    }
//            ProjectService.projects(completion: collectionView.)
//   collectionView.register(UINib(nibName: "name", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
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
