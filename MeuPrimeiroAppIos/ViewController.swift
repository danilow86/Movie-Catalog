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
    
    
    func createFilms(){
        let film1 = Film(name: "coracao Valente", imageName: "coracaoValente", isMyFavorite: true)
        
        let film2 = Film(name: "The Matrix 1", imageName: "matrix1", isMyFavorite: true)
        
        let film3 = Film(name: "Get out", imageName: "getOut", isMyFavorite: true)
        
        let film4 = Film(name: "Moonlight", imageName: "moonlight", isMyFavorite: false)
        
        let film5 = Film(name: "Million dollar baby", imageName: "millionDollarBaby", isMyFavorite: true)
        
        let film6 = Film(name: "Toy Story", imageName: "toyStory", isMyFavorite: false)
        
        let film7 = Film(name: "Elite Squad", imageName: "eliteSquad", isMyFavorite: true)
        
        let film8 = Film(name: "Irreversible", imageName: "irreversible", isMyFavorite: false)
        
        let film9 = Film(name: "Black Panther", imageName: "blackPanther", isMyFavorite: false)
        
        let film10 = Film(name: "Saw", imageName: "saw", isMyFavorite: false)
        
        
        DataFilms.films.append(film1)
        DataFilms.films.append(film2)
        DataFilms.films.append(film3)
        DataFilms.films.append(film4)
        DataFilms.films.append(film5)
        DataFilms.films.append(film6)
        DataFilms.films.append(film7)
        DataFilms.films.append(film8)
        DataFilms.films.append(film9)
        DataFilms.films.append(film10)
    }


    @IBAction func openAction(_ sender: Any) {
        
        if (txtLogin.text == "danilo" && txtPassword.text == "1234"){
            DataFilms.films.removeAll()
            createFilms()
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

