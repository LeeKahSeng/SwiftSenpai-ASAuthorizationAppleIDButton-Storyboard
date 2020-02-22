//
//  ViewController.swift
//  SwiftSenpai-ASAuthorizationAppleIDButton-Storyboard
//
//  Created by Lee Kah Seng on 20/02/2020.
//  Copyright © 2020 Lee Kah Seng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Button Tapped", message: "Sign In with Apple", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    
}

