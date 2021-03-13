//
//  ViewController.swift
//  poc-nonstoryboad
//
//  Created by Luiz Antônio da Silva Júnior on 13/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var loginButton: UIButton!
    var usernameTextField: UITextField!
    var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        loginButton = UIButton(type: .system)
        loginButton.setTitle("Entrar", for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false;
        view.addSubview(loginButton)
        loginButton.addTarget(self,
                              action: #selector(handleLoginTouchUpInside),
                              for: .touchUpInside)
        
        usernameTextField = UITextField(frame: .zero)
        usernameTextField.placeholder = "Login Name"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(usernameTextField)
        
        passwordTextField = UITextField(frame: .zero)
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        constraintsInit()
    }
    
    func constraintsInit() {
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            passwordTextField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20),
            
            usernameTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: -20),
            usernameTextField.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor, constant: 20),
            usernameTextField.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor, constant: -20)
        ])
    }
    
    @objc func handleLoginTouchUpInside() {
        print("Login has been tapped")
        if usernameTextField.isFirstResponder {
            usernameTextField.resignFirstResponder()
        }
        if passwordTextField.isFirstResponder {
          passwordTextField.resignFirstResponder()
        }
      }
}
