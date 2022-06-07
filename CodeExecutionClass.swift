//
//  CodeExecutionClass.swift
//  Day_1_OOP
//
//  Created by test on 05.06.2022.
//

import Foundation

public class CodeExecutionClass{
    
    // "static" делает метод статичным, то есть он не привязан к экземпляру класса, а к всему классу в целом
    // Обычно мы создаем экземпляр класса, и используем его методы, но в этом случае мы обращаемся к методу
    // CodeExecutionClass.ExecuteSomeCode()  можем вызвать откуда угодно с модификатором дотупа public
    // Еще раз напишу, после добавления модификатора доступа "static" мы не можем вызвать этот метод
    // через экземпляр класса
//    public static func ExecuteSomeCode(){
//
//        // Example 1
//        print("EXAMPLE 1________________")
//        var emptyIntArray: [Int] = [Int]()
//        emptyIntArray.append(3)
//        var someIntegers = [12, 23, 5, 1, -23]
//        var investmentInstruments = [InvestmentInstrument(), Stocks(), Options(), Bonds()]
//
//        for instrument in investmentInstruments{
//            instrument.PerformOneYearIncrease(initialInvestment: 100_000)
//        }
//
//        // Example 2
//        // "\n" внутри строки - перенос "каретки" на следующую строку, простым языком симулирует нажатие Enter при написании текста
//        print("\nEXAMPLE 2________________\n")
//
//        // Это просто экземпляр базового класса который по идее не нужно
//        // создавать и использовать в контексте этого приложения
//        var dish = Dish()
//
//        var dishes = [FriedEggs(), BoiledMeat(), PoisonousMushrooms()]
//
//        for dish in dishes{
//            dish.eatTheDish()
//            print("")
//            // Мы не можем вызвать метод, т.к. он принадлежит к классу
//            // PoisonedMushrooms, а не к обобщенному классу Dish
//            //dish.killTheHuman()
//        }
//
//        // Example 3
//        print("\nEXAMPLE 3________________\n")
//        // Мы можем пометить словом static не только метод в классе, но и переменную
//        // Таким образом она станет доступна во всем приложении (в зависимости от модификатора доступа)
//        // так, мы напрямую используем и меняем переменную в классе Dish
//        print(Dish.helloThereString)
//
//        Dish.helloThereString = "new modified string"
//
//        print("\n\(Dish.helloThereString)")
//    }
//
//    //public static var someInt: Int = 777
//
    public static func ExecuteSomeCode_2(){
        var example_1_variable = Example_1()
        print(example_1_variable.someInt)
        
        
        example_1_variable.someInt = 8
        print(example_1_variable.someInt)
        example_1_variable.someInt = 22
        print(example_1_variable.someInt)
        
        var example_1_apple = Example_1()
        print(example_1_apple.)
        
        
        //var example_2_variable = Example_2()
        //print(Example_2.someInt)
        
    }
}

public class Example_1{
    public var someInt = 5
    
    public var someString = "String"
    
    public var someDouble = 5.0
    
    public init(){
        
    }
}

//public class Example_2{
//    public static var someInt = 7
//}

public class Box {
    public var candiesAmount = 0
    
    public var jellyAmount = 0
    
    public var chocolateAmount = 0
    
    public var cakesAmount = 0
    
    public var biscuitAmount = 0
    
    public var piesAmount = 0
    
    
}
