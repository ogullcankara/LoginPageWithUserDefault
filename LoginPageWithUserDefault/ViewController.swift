//
//  ViewController.swift
//  LoginPageWithUserDefault
//
//  Created by Ogulcan Kara on 10.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textfiledUsername: UITextField!
    
    @IBOutlet weak var textfieldPassword: UITextField!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = d.string(forKey: "username") ?? "empty"
        let pass = d.string(forKey: "password") ?? "empty"
        
        if user != "empty" && pass != "empty" {
            performSegue(withIdentifier: "loginToMainPage", sender: nil)
        }
        
    }


    
    @IBAction func loginButton(_ sender: Any) {
        
        if let user = textfiledUsername.text , let pass = textfieldPassword.text {
            if user == "admin" && pass == "1234"{
                print("Login Success")
                
                d.set(user, forKey: "username")
                d.set(pass, forKey: "password")
                
                performSegue(withIdentifier: "loginToMainPage", sender: nil)
                
            }else{
                print("Login Incorrect")
                let alert = UIAlertController(title: "Alert", message: "Login Incorrect", preferredStyle: .alert)
                let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            }
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
}

