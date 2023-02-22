//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Murat Çelik on 22.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        override func viewWillAppear(_ animated: Bool) {
                let userInterfaceStyle = traitCollection.userInterfaceStyle
                      
                      if userInterfaceStyle == .dark {
                          changeButton.tintColor = UIColor.white
                      } else {
                          changeButton.tintColor = UIColor.blue
                      }
                      
            }
            
            override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
                let userInterfaceStyle = traitCollection.userInterfaceStyle
                            
                            if userInterfaceStyle == .dark {
                                changeButton.tintColor = UIColor.white
                            } else {
                                changeButton.tintColor = UIColor.blue
                            }
            }
            
            


        }
