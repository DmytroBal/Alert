//
//  ViewController.swift
//  Alert
//
//  Created by Dmytro Bal on 02.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var hiLable: UILabel!
    @IBOutlet var showButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiLable.isHidden = true
        showButton.layer.cornerRadius = 14
    }

    @IBAction func showButton(_ sender: Any) {
        self.hiLable.text = "Hi, "
        self.alert(title: "Atantion", message: "Please enter your name", style: .alert)
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let alertAction = UIAlertAction(title: "Okay", style: .default) { alertAction in
            let text = alertController.textFields?.first
            self.hiLable.text! += (text?.text!)! + ("!") 
            
        }
        
        alertController.addTextField { textField in
            textField.isSecureTextEntry = true
        }
        alertController.addAction(alertAction)
        self.present(alertController, animated: true)
        hiLable.isHidden = false
    }
}

