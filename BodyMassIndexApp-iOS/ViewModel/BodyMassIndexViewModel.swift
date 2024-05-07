//
//  BodyMassIndexViewModel.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import Foundation

class BodyMassIndexViewModel: ObservableObject{
    
    // 1: male, 0: female
    @Published var sex: Int = -1
    
    // parameters for BMI
    @Published var age: Int = -1
    @Published var weight: Int = -1
    @Published var height: Int = -1
    
    // result
    @Published var result: Double = 0.0
    @Published var testR: Int = 0
    
    // function to calculate BMI
    func calculateBodyMassIndex(){
        result = Double(weight)/(Double(height)*Double(height))
    }
    
    func test(){
        testR = age*100
    }
}
