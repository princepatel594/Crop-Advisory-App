//
//  CityViewController.swift
//  Agrarian
//
//  Created by Bhushan Joshi on 2018-03-24.
//  Copyright © 2018 Bhushan Joshi. All rights reserved.
//

import UIKit
import TextFieldEffects


class CityViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: AkiraTextField!
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    var effects : UIVisualEffect!
    @IBOutlet var selectCityView: UIView!
    
    @IBOutlet weak var selectCityLabel: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        effects = visualEffectView.effect!
        visualEffectView.effect = nil
        selectCityView.layer.cornerRadius = 5
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func animateIn(){
        self.view.addSubview(selectCityView)
        selectCityView.center = self.view.center
        selectCityView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        selectCityView.alpha = 0
        
        UIView.animate(withDuration: 0.4) {
            self.visualEffectView.effect = self.effects
            self.selectCityView.alpha = 1
            self.selectCityView.transform = CGAffineTransform.identity
            
        }
    }
    
    @IBAction func testButton(_ sender: UIButton) {
        animateIn()
        let selectedCity = cityTextField.text
        
    }
    
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        self.selectCityView.removeFromSuperview()
    }
}
