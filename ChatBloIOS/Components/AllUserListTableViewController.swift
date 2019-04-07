//
//  AllUserListTableViewController.swift
//  ChatBloIOS
//
//  Created by joan louji on 06/04/19.
//  Copyright © 2019 joan louji. All rights reserved.
//

import UIKit
import Firebase

class AllUserListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleLogout))
        fetchuser()
    
    }
    @objc func fetchuser(){
        Database.database().reference(fromURL: "https://blochat-f1823.firebaseio.com/").child("Users").observeSingleEvent(of: .value, with: {(DataSnapshot) in
            if let dictionary = DataSnapshot.value as? [String: AnyObject]{
                let user = UserList()
                user.setValuesForKeys(dictionary)
                print(user.name)
            }
        }, withCancel: nil)
    }
    @objc func handleLogout(){
       dismiss(animated: true, completion: nil)
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "celid")
        cell.textLabel?.text = "Hello All"
        return cell
    }
}
