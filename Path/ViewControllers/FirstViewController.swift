//
//  ViewController.swift
//  Path
//
//  Created by brubru on 20.08.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var smileLabel: UILabel!
    
    // Создайте экземпляр модели
    private let character = Character.getCharacter()

    // Переход с этого экрана осуществляется программно (сегвей не от кнопки). Вам нужно по нажатию на кнопку произвести переход на следующий экран.
    // при этом передать экземпляр модели
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let secondVC = navigationVC.topViewController as? SecondViewController else { return }
        secondVC.character = character
    }

    @IBAction func showNextScreenButton() {
        performSegue(withIdentifier: "toNavigationVC", sender: nil)
    }
    
   @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
       smileLabel.text = "🍔"
    }
}


