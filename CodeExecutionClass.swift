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
        //print(example_1_apple.)
        
        
        //var example_2_variable = Example_2()
        //print(Example_2.someInt)
        
        var box_1 = Box()
        
        box_1.setInitialValues(candiesAmount: 3, jellyAmount: 5, chocolateAmount: 7, cakesAmount: 1, biscuitAmount: 44, piesAmount: 5)
        box_1.printContents()
        box_1.printContentsAmount()
        
        box_1.setInitialValues(candiesAmount: 0, jellyAmount: 1, chocolateAmount: 0, cakesAmount: 2, biscuitAmount: 0, piesAmount: 5)
        box_1.printContents()
        box_1.printContentsAmount()
        
        //box_1.candiesAmount = 3
        //box_1.jellyAmount = 3
        //box_1.chocolateAmount = 3
        //box_1.cakesAmount = 3
        //box_1.biscuitAmount = 3
        //box_1.piesAmount = 3
        
        //print(box_1.candiesAmount)
        //print(box_1.jellyAmount)
        //print(box_1.chocolateAmount)
        //print(box_1.cakesAmount)
        //print(box_1.biscuitAmount)
        //print(box_1.piesAmount)
        
        
        
        //var box_2 = Box()
        //box_2.setInitialValues(candiesAmount: 3, jellyAmount: 0, chocolateAmount: 0, cakesAmount: 4, biscuitAmount: 10, piesAmount: 1)
        //
        //box_2.piesAmount = 777
        //
        //box_2.printContents()
        
        var box_3 = Box()
        var box_4 = Box()
        var box_5 = Box()
        var box_6 = Box()
        
        box_3.setInitialValues(candiesAmount: 5, jellyAmount: 5, chocolateAmount: 5, cakesAmount: 5, biscuitAmount: 5, piesAmount: 5)
        box_4.setInitialValues(candiesAmount: 34, jellyAmount: 6, chocolateAmount: 6, cakesAmount: 6, biscuitAmount: 6, piesAmount: 6)
        box_5.setInitialValues(candiesAmount: 7, jellyAmount: 7, chocolateAmount: 22, cakesAmount: 7, biscuitAmount: 7, piesAmount: 0)
        box_6.setInitialValues(candiesAmount: 2, jellyAmount: 7, chocolateAmount: 3, cakesAmount: 7, biscuitAmount: 9, piesAmount: 2)
        
        let array = [box_3, box_4, box_5, box_6]
        
        Box.sumArray(boxes: array)
        
        print("Ане \(Box.AnnaSemichaevaAge) год")
        
        Box.AnnaSemichaevaAge += 1
        
        print("а теперь Ане исполнилось \(Box.AnnaSemichaevaAge) года")
        
        
        
        
        
        
        
        
        
        
        
        let array_1 = [Square(side_a: 5), Triangle(side_a: 3), Rectangle(side_a: 5, side_b: 3), Circle(r: 5)]
        
        for shape in array_1 {
            print(shape.calculatePerimeter())
        }
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
    
    public func setInitialValues(candiesAmount: Int = 0, jellyAmount: Int = 0, chocolateAmount: Int = 0, cakesAmount: Int = 0, biscuitAmount: Int = 0, piesAmount: Int = 0) {
        self.candiesAmount = candiesAmount
        self.jellyAmount = jellyAmount
        self.chocolateAmount = chocolateAmount
        self.cakesAmount = cakesAmount
        self.biscuitAmount = biscuitAmount
        self.piesAmount = piesAmount
    }
    // hello there
    // hello there my name is Anna Semichaeva
    // Привет меня зовут Анна Семичаева и я люблю сладости! : = )))) Ага так я пишу функцию мне нужно поставить запятую, двоеточие, котя такой крутой
    public func printContentsAmount(){
        let sum = candiesAmount + jellyAmount + chocolateAmount + cakesAmount + biscuitAmount + piesAmount
        print("Contents amount: \(sum)")
    }
    public func calculateContentsAmount() -> Int {
        let sum = candiesAmount + jellyAmount + chocolateAmount + cakesAmount + biscuitAmount + piesAmount
        return sum
    }
    
    public static func sumArray(boxes: [Box]) {
        var totalAmountOfCandies = 0
        
        for box in boxes {
            totalAmountOfCandies += box.calculateContentsAmount()
        }
        
        print("Обнаружено \(boxes.count) коробки(коробок), общее кол-во сладостей: \(totalAmountOfCandies)")
    }
    
    public static var AnnaSemichaevaAge = 21
    
    public var candiesAmount = 0
    
    public var jellyAmount = 0
    
    public var chocolateAmount = 0
    
    public var cakesAmount = 0
    
    public var biscuitAmount = 0
    
    public var piesAmount = 0
    
    
    
    
    public func printContents(){
        print("_____________")
        print("candiesAmount: \(candiesAmount)")
        print("jellyAmount: \(jellyAmount)")
        print("chocolateAmount: \(chocolateAmount)")
        print("cakesAmount: \(cakesAmount)")
        print("biscuitAmount: \(biscuitAmount)")
        print("piesAmount: \(piesAmount)")
        print("_____________")
    }
}

public class Shape {
    
    public func calculatePerimeter() -> Int {
        return 0
    }
}


public class Square: Shape {
    
    var side_a: Int
    
    public init(side_a: Int) {
        self.side_a = side_a
    }
    
    public override func calculatePerimeter() -> Int {
        return side_a * 4
    }
}

public class Triangle : Shape {
    
    
    
    
    var side_a: Int
    
    public init(side_a: Int) {
        self.side_a = side_a
    }
    
    public override func calculatePerimeter() -> Int {
        return side_a * 3
    }
}


public class Rectangle : Shape {
    
    var side_a: Int
    var side_b: Int
    
    
    
    
    
    public init(side_a: Int, side_b: Int) {
        self.side_a = side_a
        self.side_b = side_b
    }
    
    
    
    public override func calculatePerimeter() -> Int {
        return side_a * 2 + side_b * 2
    }
    
    
    
    
    
}


public class Circle: Shape {
    
    var r: Int
    
    public init(r: Int) {
        self.r = r
    }
    
    public override func calculatePerimeter() -> Int {
        return Int(Float(2) * Float(r) * .pi)
    }
    
}


