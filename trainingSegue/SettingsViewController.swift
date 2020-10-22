//
//  SettingsViewController.swift
//  trainingSegue
//
//  Created by Никита Гвоздиков on 21.10.2020.
//

import UIKit


class SettingsViewController: UIViewController {
    
    var textFrom: String?

    override func viewDidLoad() {
        super.viewDidLoad()
title = textFrom
    
    }
    
    deinit {
        print("controller закрылся")
    }
  
}
