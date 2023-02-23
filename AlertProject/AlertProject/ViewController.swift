//
//  ViewController.swift
//  AlertProject
//
//  Created by Murat Çelik on 7.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserNameText: UITextField!
    
    @IBOutlet weak var PasswordText: UITextField!
    
    @IBOutlet weak var PasswordText2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func SignUpClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error", message: "User Name not Found", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //button clicked
            print("button clicked")
        }
        alert.addAction(okButton)
        self.present(alert, animated: true)
         */
        
        if UserNameText.text == "" {
           makeAlert(titleInput: "Error", messageInput: "Username not found")
        }
        else if PasswordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found")
        }
        else if PasswordText.text != PasswordText2.text {
            makeAlert(titleInput: "Success", messageInput: "Password do not match")
        }
        else{
           makeAlert(titleInput: "Success", messageInput: "User OK")
        }
        
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
}






