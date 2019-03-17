//
//  LoginPageViewController.swift
//  ChatBloIOS
//
//  Created by joan louji on 17/03/19.
//  Copyright © 2019 joan louji. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController {
    let login_button: UIButton = {
        let e = UIButton()
        e.setTitle("Login", for: .normal)
        e.backgroundColor = UIColor(red: 3/255, green: 150/255, blue: 136/255, alpha: 1)
        e.setTitleColor(.white, for: .normal)
        e.addTarget(self, action: #selector(loginnav), for: .touchUpInside)
        return e
    }()
    
    let register_button: UIButton = {
        let e = UIButton()
        e.setTitle("Register", for: .normal)
        e.backgroundColor = .white
        e.setTitleColor(.black, for: .normal)
        e.addTarget(self, action: #selector(registerpagenav), for: .touchUpInside)
        return e
    }()
    
    let email_text: UITextField = {
        let e = UITextField()
        e.placeholder = "Email"
        e.textColor = .black
        e.keyboardType = UIKeyboardType.emailAddress
        e.borderStyle = .none
        e.layer.backgroundColor = UIColor.white.cgColor
        
        e.layer.masksToBounds = false
        e.layer.shadowColor = UIColor.gray.cgColor
        e.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        e.layer.shadowOpacity = 1.0
        e.layer.shadowRadius = 0.0
        return e
    }()
    
    let passwrod_text: UITextField = {
        let e = UITextField()
        e.placeholder = "Password"
        e.textColor = .black
        e.borderStyle = .none
        e.layer.backgroundColor = UIColor.white.cgColor
        
        e.layer.masksToBounds = false
        e.layer.shadowColor = UIColor.gray.cgColor
        e.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        e.layer.shadowOpacity = 1.0
        e.layer.shadowRadius = 0.0
        return e
    }()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpTextChatBlo()
        setUpEmailFeild()
        setUppasswordFeild()
        setUpLoginButton()
        setUpRegsiterButton()
    }
    
    @objc func registerpagenav(sender: UIButton){
        let registernav = RegisterPageViewController()
        present(registernav, animated: false, completion: nil)
    }
    
    @objc func loginnav(sender: UIButton){
        let email = email_text.text
        let password = passwrod_text.text
      
        
    }
    
    fileprivate func setUpTextChatBlo(){
        let lbl = UILabel(frame: CGRect(x: 90, y: 100, width: 230, height: 21))
        lbl.textAlignment = NSTextAlignment.center
        lbl.text = "Sign In to Your Account"
        lbl.backgroundColor = .white
        lbl.textColor = UIColor(red: 3/255, green: 150/255, blue: 136/255, alpha: 1)
        lbl.font = UIFont(name:"HelveticaNeue-Bold", size: 20)
        lbl.sizeToFit()
        view.addSubview(lbl)
    }
    
    fileprivate func setUpEmailFeild(){
        view.addSubview(email_text)
        email_text.translatesAutoresizingMaskIntoConstraints = false
        email_text.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        email_text.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        email_text.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        email_text.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    fileprivate func setUppasswordFeild(){
        view.addSubview(passwrod_text)
        passwrod_text.translatesAutoresizingMaskIntoConstraints = false
        passwrod_text.topAnchor.constraint(equalTo: email_text.bottomAnchor, constant: 10).isActive = true
        passwrod_text.leftAnchor.constraint(equalTo: email_text.leftAnchor, constant: 0).isActive = true
        passwrod_text.rightAnchor.constraint(equalTo: email_text.rightAnchor, constant: 0).isActive = true
        passwrod_text.heightAnchor.constraint(equalToConstant: 50).isActive = true
        passwrod_text.isSecureTextEntry = true 
    }
    
    fileprivate func setUpLoginButton(){
        view.addSubview(login_button)
        login_button.translatesAutoresizingMaskIntoConstraints = false
        login_button.topAnchor.constraint(equalTo: passwrod_text.bottomAnchor, constant: 15).isActive = true
        login_button.leftAnchor.constraint(equalTo: passwrod_text.leftAnchor, constant: 0).isActive = true
        login_button.rightAnchor.constraint(equalTo: passwrod_text.rightAnchor, constant: 0).isActive = true
        login_button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    fileprivate func setUpRegsiterButton(){
        view.addSubview(register_button)
        register_button.translatesAutoresizingMaskIntoConstraints = false
        register_button.topAnchor.constraint(equalTo: login_button.bottomAnchor, constant: 30).isActive = true
        register_button.leftAnchor.constraint(equalTo: login_button.leftAnchor, constant: 0).isActive = true
        register_button.rightAnchor.constraint(equalTo: login_button.rightAnchor, constant: 0).isActive = true
        register_button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
