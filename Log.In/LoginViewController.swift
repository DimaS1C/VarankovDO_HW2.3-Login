//
//  ViewController.swift
//  Log.In
//
//  Created by DimaS1C on 26.05.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
        
    let dictionaryUP = ["User":"Password"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    @IBAction func login() {
        if dictionaryUP["User"] == userTF.text && dictionaryUP["Password"] == passwordTF.text {
            print("Зашибись")
        } else {
            let action = UIAlertAction(title: "😔", style: .default) { (action) in }
            let alert = UIAlertController(title: "Сорян!", message: "Подбирай еще!", preferredStyle: .alert)
            
            alert.addAction(action)
            
            self.present(alert, animated: true) {
            }
        }
    }
    
    @IBAction func forgotUserName() {
        let action = UIAlertAction(title: "ОК", style: .default) { (action) in }
        let alert = UIAlertController(title: "Опа!", message: """
            Чекай почту, там твой логин!
            ✉️
            """, preferredStyle: .alert)
        
        alert.addAction(action)
        
        self.present(alert, animated: true) {
        }
    }
    
    @IBAction func forgotPassword() {
        let action = UIAlertAction(title: "ОК", style: .default) { (action) in }
        let alert = UIAlertController(title: "Опа!", message: """
            Чекай почту, там твой пароль!
            ✉️
            """, preferredStyle: .alert)
        
        alert.addAction(action)
        
        self.present(alert, animated: true) {
        }
    }
    
}

