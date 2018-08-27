//
//  ViewController.swift
//  Agrarian
//
//  Created by Bhushan Joshi on 2018-03-23.
//  Copyright © 2018 Bhushan Joshi. All rights reserved.
//

import UIKit
import PaperOnboarding
import TextFieldEffects

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var logoImageView: SpringImageView!
    @IBOutlet weak var bottomViewContainer: SpringView!
    @IBOutlet weak var xyz: AkiraTextField!
    @IBOutlet weak var logout: AkiraTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        logoImageView.animation = "fadeIn"
        logoImageView.curve = "easeInExpo"
        logoImageView.duration = 6.0
        logoImageView.animate()
        self.xyz.delegate = self
    }
   
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        xyz.resignFirstResponder()
        logout.resignFirstResponder()
        return(true)
    }
}

