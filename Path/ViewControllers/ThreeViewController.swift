//
//  ThreeViewController.swift
//  Path
//
//  Created by brubru on 20.08.2022.
//

import UIKit

class ThreeViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    
    // в лейбл передать имя и фамилию из модели и передать экземпляр модели дальше
    var character: Character!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = "\(character.name) \(character.surename)"
        
        let imageView = UIImageView(frame: CGRect(x: 4, y: 4, width: 4, height: 4))
        imageView.contentMode = .scaleToFill
        let image = UIImage(systemName: "pencil")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }
    
    
    
}
