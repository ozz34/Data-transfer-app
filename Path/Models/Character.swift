//
//  Character.swift
//  Path
//
//  Created by brubru on 20.08.2022.
//

struct Character {
    let name: String
    let surename: String
    let age: Int
    
    // Создайте метод который бы возвращал уже сформированную модель данных
    static func getCharacter() -> Character {
        Character(name: "Jack",
                  surename: "Sparrow",
                  age: 35)
    }
}
