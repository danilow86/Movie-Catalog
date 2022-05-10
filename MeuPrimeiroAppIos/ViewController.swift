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
            print("Wrong user or password")
            
        }
        
    }
    
}

