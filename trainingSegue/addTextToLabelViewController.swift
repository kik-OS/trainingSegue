//
//  addTextToLabelViewController.swift
//  trainingSegue
//
//  Created by Никита Гвоздиков on 22.10.2020.
//

import UIKit

class addTextToLabelViewController: UIViewController {

    @IBOutlet var textFieldOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func cancelButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    deinit {
        print("has been closed")
    }
}
