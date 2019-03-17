//
//  LoginViewController.swift
//  ChatBloIOS
//
//  Created by joan louji on 17/03/19.
//  Copyright © 2019 joan louji. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginController: UIButton = {
        let e = UIButton(type: .system)
        e.backgroundColor = UIColor(red: 255/255, green: 85/255, blue: 32/255, alpha: 1)
        e.setTitle("Already have an Account", for: .normal)
        e.setTitleColor(.white, for: .normal)
        e.action
        e.addTarget(self, action: #selector(loginpage), for: .touchUpInside)
        return e
        }()
    
    let registerController:  UIButton = {
        let w = UIButton(type: .system)
        w.backgroundColor = .white
        w.setTitle("Need A New Account?", for: .normal)
        w.setTitleColor(UIColor(red: 3/255, green: 150/255, blue: 136/255, alpha: 1), for: .normal)
        w.addTarget(self, action: #selector(registerpage), for: .touchUpInside)
        return w
        }()
    //---------- MAIN -----------------------

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 3/255, green: 150/255, blue: 136/255, alpha: 1)
        setUpTextChatBlo()
        setUpLoginButton()
        setUpRegisterButton()
    }
    
    //---------- END MAIN-----------------------
    
    //---------- OnClick Login Button-----------------------
    @objc func loginpage(sender: UIButton!) {
     let logintran = LoginPageViewController()
        present(logintran, animated: false, completion: nil)
    }
    //---------- OnClick login Button-----------------------
    
    //---------- OnClick register Button-----------------------
    @objc func registerpage(sender: UIButton!) {
        let registertran = RegisterPageViewController()
        present(registertran, animated: false, completion: nil)
    }
    //---------- OnCluck register Button-----------------------

    //---------- Set TextView -----------------------

    fileprivate func setUpTextChatBlo(){
        let lbl = UILabel(frame: CGRect(x: 110, y: 600, width: 230, height: 21))
        lbl.textAlignment = NSTextAlignment.center
        lbl.text = "Welcome To ChatBlo"
        lbl.textColor = .white
        lbl.backgroundColor = UIColor(red: 3/255, green: 150/255, blue: 136/255, alpha: 1)
        lbl.font = UIFont(name:"HelveticaNeue-Bold", size: 20)
        lbl.sizeToFit()
        view.addSubview(lbl)
    }
    //---------- Set TextView -----------------------
    
    //---------- Set Login Button-----------------------
    fileprivate func setUpLoginButton(){
        view.addSubview(loginController)
        
        loginController.translatesAutoresizingMaskIntoConstraints = false
        loginController.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 600).isActive = true
        loginController.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 24).isActive = true
        loginController.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -24).isActive = true
        loginController.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    //---------- Set Login Button-----------------------
    
    //---------- Set Register Button-----------------------
    fileprivate func setUpRegisterButton(){
        view.addSubview(registerController)
        
        registerController.translatesAutoresizingMaskIntoConstraints = false
        registerController.topAnchor.constraint(equalTo: loginController.bottomAnchor, constant: 10).isActive = true
        registerController.leftAnchor.constraint(equalTo: loginController.leftAnchor, constant: 0).isActive = true
        registerController.rightAnchor.constraint(equalTo: loginController.rightAnchor, constant: 0).isActive = true
        registerController.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    //---------- Set Register Button-----------------------



}
