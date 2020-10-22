//
//  ViewController.swift
//  trainingSegue
//
//  Created by Никита Гвоздиков on 21.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldOutlet: UITextField!
    
    @IBOutlet var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    

    @IBAction func buttonAction(_ sender: UIButton) {
        let text = textFieldOutlet.text
        guard let newVC = storyboard?.instantiateViewController(identifier: "SettingsViewController") as? SettingsViewController else { return }
        newVC.textFrom = text
        navigationController?.pushViewController(newVC, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSettings" {
            let text = textFieldOutlet.text
            let newVs = segue.destination as? SettingsViewController
            newVs?.textFrom = text
            
        }
        
    }
    
    @IBAction func saveus(segue: UIStoryboardSegue) {
        
        guard let addTextToLabelVC = segue.source as? addTextToLabelViewController else { return }
        guard let textFromTextField = addTextToLabelVC.textFieldOutlet.text else {return}
        labelOutlet.text = textFromTextField
        
    }
}

