//
//  ViewController.swift
//  AdopteUnChat
//
//  Created by Timothy jounier on 08/09/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var catImageView: UIImageView!
    
    
    var cats: [Cat] = [
        Cat(name: "Mistigri", age: 6, gender: .male, imageString: "one"),
        Cat(name: "Boldy", age: 4, gender: .femelle, imageString: "two"),
        Cat(name: "Fluffy", age: 9, gender: .male, imageString: "three"),
        Cat(name: "Caramel", age: 11, gender: .male, imageString: "four"),
        Cat(name: "Princess India", age: 13, gender: .femelle, imageString: "five"),
        Cat(name: "Filou", age: 1, gender: .male, imageString: "six"),
        Cat(name: "Pacha", age: 2, gender: .femelle, imageString: "seven"),
        Cat(name: "Selfy", age: 5, gender: .femelle, imageString: "eight")]
    
    var index = 0
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        roundedLogo()
        containerSetup()
        catImageSetup()
        setupCat()
    }
    
    // Fonction modification logo
    func roundedLogo(){
        logo.layer.cornerRadius = logo.frame.height / 2
        logo.layer.borderColor = UIColor.systemTeal.cgColor
        logo.layer.borderWidth = 2
    }
    
    // Fonction modification Container principal
    func containerSetup(){
        container.layer.cornerRadius = 20
        container.layer.shadowColor = UIColor.systemTeal.cgColor
        container.layer.shadowRadius = 8
        container.layer.shadowOpacity = 0.8
        container.layer.shadowRadius = 8
        container.layer.shadowOffset = CGSize(width: 2, height: 5)
    }
    
    // Fonction modification Image des chats
    func catImageSetup(){
        catImageView.layer.cornerRadius = 20
    }
    
    func setupCat(){
        let cat = cats[index]
        nameLabel.text = cat.name
        infoLabel.text = cat.desc
        catImageView.image = cat.setImage()
        nameLabel.textColor = cat.color
        infoLabel.textColor = cat.color
        container.layer.shadowColor = cat.cgColor
        logo.layer.borderColor = cat.cgColor
    }
    
    
    // Action sur les boutons
    @IBAction func yesPressed(_ sender: Any) {
        // Au lieu de valider, continuer dans l'Array
        if index < cats.count - 1 {
            index += 1
        } else {
            index = 0
        }
        setupCat()
    }
    
    @IBAction func noPressed(_ sender: Any) {
        // Au lieu de supprimer, revenir en arrière
        if index == 0 {
            index = cats.count - 1
        } else {
            index -= 1
        }
        setupCat()
    }
    
}

