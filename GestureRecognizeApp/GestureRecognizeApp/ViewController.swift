//
//  ViewController.swift
//  GestureRecognizeApp
//
//  Created by Murat Çelik on 8.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var is1 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic() {
        

        if is1 == true{
            imageView.image = UIImage(named: "2")
            myLabel.text = "Lars Ulrich"
            is1 = false
        }
        else{
            imageView.image = UIImage(named: "1")
            myLabel.text = "James Hetfield"
            is1 = true
        }
    }

}








