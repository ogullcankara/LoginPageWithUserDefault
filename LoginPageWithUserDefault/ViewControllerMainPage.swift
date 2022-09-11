//
//  ViewControllerMainPage.swift
//  LoginPageWithUserDefault
//
//  Created by Ogulcan Kara on 11.09.2022.
//

import UIKit

class ViewControllerMainPage: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
    let d = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        let user = d.string(forKey: "username") ?? "empty"
        resultLabel.text = user
    }
    
    
    @IBAction func logoutButton(_ sender: Any) {
        d.removeObject(forKey: "username")
        d.removeObject(forKey: "password")
        exit(-1)
    }
    
}
