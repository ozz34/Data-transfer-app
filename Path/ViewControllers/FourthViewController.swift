//
//  FourthViewController.swift
//  Path
//
//  Created by brubru on 20.08.2022.
//

import UIKit

final class FourthViewController: UIViewController {
    // в лейбл передать полное имя и возраст из модели
    @IBOutlet var fullInfoLabel: UILabel!

    var character: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullInfoLabel.text =  "\(character.name) \(character.surename) \(character.age) years"
    }
    // Вернутья на первый экран при помощи unwindSegue и изменить смайлик на экране FirstVC
}
