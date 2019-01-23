//
//  ViewController.swift
//  ChangeConstraintDemo
//
//  Created by Vũ on 12/5/18.
//  Copyright © 2018 Vũ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var constraintTop: NSLayoutConstraint!
    
    @IBOutlet weak var contraintLeft: NSLayoutConstraint!
    var isOn: Bool = false {
        didSet {
            UIView.animate(withDuration: 2.0) {
                self.constraintTop.constant = self.isOn ? 300 : 24
                self.contraintLeft.constant = self.isOn ? 67 : 7
//                if self.isOn == true {
//                    self.constraintTop.constant = 300
//                }else{
//                    self.constraintTop.constant = 24
//                }
                self.view.layoutIfNeeded()
                
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func change(_ sender: Any) {
        isOn = !isOn
        
    }
    
}

