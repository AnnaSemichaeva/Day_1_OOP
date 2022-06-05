//
//  1_InheritanceExample.swift
//  Day_1_OOP
//
//  Created by test on 05.06.2022.
//

import Foundation

// Блок 1
// Здесь будут классы первого для примера.

// И этот класс который содержит константы, которые показывают какой доход в год
// Каждый из инвестиционных инструментов приносит в год

public class InvestmentUtils{
    public static let yearlyStocksMultiplier = 1.070 // == 7 % в год
    public static let yearlyBondsMultiplier = 1.025 // == 2,5 % в год
    public static let yearlyOptionsMultiplier = 1.200 // == 20 % в год
}

public class InvestmentInstrument{
    public func PerformOneYearIncrease(initialInvestment: Int){
        print("This is a basic class which can't perform any calculations, the invested amount remain the same: \(initialInvestment)")
    }
    
}

public class Stocks : InvestmentInstrument{
    
    public override func PerformOneYearIncrease(initialInvestment: Int){
        var investmentResult = (Int)(Double(initialInvestment) * InvestmentUtils.yearlyStocksMultiplier)
        print("Investment Result from stocks: \(investmentResult)")
    }
}

public class Options : InvestmentInstrument{
    
    public override func PerformOneYearIncrease(initialInvestment: Int){
        var investmentResult = (Int)(Double(initialInvestment) * InvestmentUtils.yearlyOptionsMultiplier)
        print("Investment Result from options: \(investmentResult)")
    }
}

// Bonds - по английски = гос.облигации в США (и не только в США)
public class Bonds : InvestmentInstrument{
    
    public override func PerformOneYearIncrease(initialInvestment: Int){
        var investmentResult = (Int)(Double(initialInvestment) * InvestmentUtils.yearlyBondsMultiplier)
        print("Investment Result from bonds: \(investmentResult)")
    }
}
