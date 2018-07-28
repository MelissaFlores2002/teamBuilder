//
//  YourProfileViewController.swift
//  personalProject
//
//  Created by Melissa Flores on 7/25/18.
//  Copyright © 2018 Melissa Flores. All rights reserved.
//

import UIKit

class YourProfileViewController: UIViewController {
    
//    var dropView = dropDownView()
//
//    var height = NSLayoutConstraint()
//
//    var button = dropDownButton()
//
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        button = dropDownButton.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//
//        button.setTitle("CreatorTypes", for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        self.view.didAddSubview(button)
//
//        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//
//        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        button.heightAnchor.constraint(equalToConstant: 150).isActive = true
//
//        button.dropView.dropDownOptions = [ "Codeing (IOS)" ,"Song Writer", "Codeing (JAVA)","Painter", "Codeing (HTML)","Musician", "Mechanical Engineering","Architeture","Electrical Engineering","Drawing", "Pnuematics","Videographers", "CAD (Computer Aid Design)", "Photographer"]
//
//
//        }
//
//    class dropDownButton: UIButton {
//        override init(frame: CGRect) {
//            super.init(frame: frame)
//
//            self.backgroundColor = UIColor.darkGray
//
//            dropView = dropDownView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
//
//            dropView.translatesAutoresizingMaskIntoConstraints = false
//
//        }
//        override func didMoveToSuperview() {
//            self.superview?.addSubview(dropView)
//            self.superview?.bringSubview(toFront: dropView)
//            dropView.topAnchor.constraint(equalToConstant: self.bottomAnchor).isActive = true
//            dropView.centerXAnchor.contraint(equalToConstant: self.centerXAnchor).isActive = true
//            dropView.widthAnchor.contraint(equalToConstant: self.widthAnchor).isActive = true
//            height = dropView.heightAnchor.contraint(equalToConstant: 0)
//        }
//
//        var isOpen = false
//        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//            if isOpen == false {
//               isOpen = true
//
//                NSLayoutConstraint.deactivate([self.height])
//                self.height.contraint = 150
//                NSLayoutConstraint.activate([self.height])
//
//                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
//                    self.dropView.layoutIfNeeded()
//                    self.dropView.center.y += self.dropView.frame.height / 2
//                }, completion: nil)
//
//            }else{
//                isOpen = false
//                NSLayoutConstraint.deactivate([self.height])
//                self.height.contraint = 0
//                NSLayoutConstraint.activate([self.height])
//
//                UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
//                     self.dropView.center.y -= self.dropView.frame.height / 2
//                    self.dropView.layoutIfNeeded()
//                }, completion: nil)
//            }
//        }
//
//
//
//
//        required init?(coder aDecoder: NSCoder) {
//            fatalError("init(coder:) has not been implemented")
//        }
//    }
//}
//class dropDownView: UIView, UITableViewDelegate, UITableViewDataSource {
//    var dropDownOptions = [String]()
//
//    var tableView = UITableView()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        tableView.backgroundColor = UIColor.blue
//        self.backgroundColor = UIColor.blue
//
//      tableView.delegate = self
//    tableView.dataSource = self
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//
//        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//             tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//             tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//
//
//        self.addSubview(tableView)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//    return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return dropDownOptions.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        var cell = UITableViewCell()
//
//        cell.textLabel?.text = dropDownOptions[indexPath.row]
//        cell.backgroundColor = UIColor.magenta
//        return cell
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(dropDownOptions[indexPath.row])
//    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//
//    }
    }

















