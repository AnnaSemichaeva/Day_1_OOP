//
//  2_InheritanceExample.swift
//  Day_1_OOP
//
//  Created by test on 05.06.2022.
//

import Foundation

public class Dish{
    
    static var helloThereString = "This is a static vatiable which has a type of string, it can be used and modified from anywhere without a need of a class instance"
    
    public func eatTheDish(){
        // Строчка ниже вызовет исключение при запуске, если будет создан
        // экземпляр класса Dish и у него будет вызван этот метод (конечно если строчка не будет закомментирована)
        // preconditionFailure("This method is abstract, you must override it in child classes")
    }
    
    // Можно использовать модификатор "internal" но тогда методы можно будет вызвать извне, а
    // модификатор доступа "fileprivate" дает использовать метод только из этого файла
    // можно почитать тут https://swiftbook.ru/content/languageguide/access-control/
    fileprivate func increaseStamina(){
        print("ваша выносливость увеличилась")
    }
    
    fileprivate func increaseIntelligence(){
        print("ваш интеллект увеличился")
    }
    
    fileprivate func poisonTheHuman(){
        print("Кажется вы отравились, ваша выносливость уменьшилась")
    }
}

public class FriedEggs : Dish{
    public override func eatTheDish() {
        print("Очень вкусно, вы съели жаренные яйца")
        increaseStamina()
    }
}

public class BoiledMeat : Dish{
    public override func eatTheDish() {
        print("Очень вкусно, вы съели вареное мясо")
        increaseIntelligence()
    }
}

public class PoisonousMushrooms : Dish{
    public override func eatTheDish() {
        print("Вы съели какие-то грибы, на вкус очень даже ничего")
        poisonTheHuman()
    }
    
    private func killTheHuman(){
        print("К сожалению, отравленное блюдо вас убило")
    }
}
