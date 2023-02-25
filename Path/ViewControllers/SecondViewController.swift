//
//  SecondViewController.swift
//  Path
//
//  Created by brubru on 20.08.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    
    var character: Character!
    // в лейбл передать имя из модели и передать экземпляр модели дальше

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = character.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach {
            guard let threeVC = $0 as? ThreeViewController else {
                guard let navigationVC = $0 as? UINavigationController else { return }
                guard let fourthVC = navigationVC.topViewController as? FourthViewController else { return }
                fourthVC.character = character
                return
            }
            
            threeVC.character = character
        }
    }
}
