//
//  ViewController.swift
//  ChatBloIOS
//
//  Created by joan louji on 17/03/19.
//  Copyright © 2019 joan louji. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    @objc func handleLogout(){
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
    }

}

