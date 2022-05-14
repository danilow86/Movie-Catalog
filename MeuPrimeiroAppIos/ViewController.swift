//
//  ViewController.swift
//  MeuPrimeiroAppIos
//
//  Created by Dan on 28/04/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtLogin: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        

        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func openAction(_ sender: Any) {
        
        if (txtLogin.text == "danilo" && txtPassword.text == "1234"){
            performSegue(withIdentifier: "tela2", sender: self)
            
        }
            else
        {
                let alert = UIAlertController(title: "Alert",
                message: "Erro no Login", preferredStyle:
                    UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style:
                    UIAlertAction.Style.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
}

