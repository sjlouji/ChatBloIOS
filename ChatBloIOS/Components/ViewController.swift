//
//  ViewController.swift
//  ChatBloIOS
//
//  Created by joan louji on 17/03/19.
//  Copyright © 2019 joan louji. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        let imageicon=UIImage(named: "allusers")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: imageicon, landscapeImagePhone: imageicon, style: .plain, target: self, action: #selector(navigatetoallusers))

        if Auth.auth().currentUser?.uid == nil{
            perform(#selector(handleLogout),with: nil,afterDelay: 0);
        }
        else{
            let uid=Auth.auth().currentUser?.uid
            Database.database().reference(fromURL: "https://blochat-f1823.firebaseio.com/").child("Users").child(uid!).observeSingleEvent(of: .value, with: {(DataSnapshot) in
                print(DataSnapshot)
                if let dictionary = DataSnapshot.value as? [String: AnyObject]{
                    self.navigationItem.title = (dictionary["name"] as! String) 
                }
            }, withCancel: nil)
        }
    }
    @objc func navigatetoallusers(){
        let message = AllUserListTableViewController()
        present(message, animated: true, completion: nil)
    }
    @objc func handleLogout(){
        do{
            try Auth.auth().signOut()
        }catch let logoutError{
            print(logoutError)
        }
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
    }
    
}

