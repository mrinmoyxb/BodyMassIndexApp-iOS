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
    @Published var resultRisk: String = "..."
    @Published var resultImpact: String = "..."
    //@Published var testR: Int = 0
    
    // Possible health impacts
     let underweightRisk: String = "Increased risk of malnutrition, osteoporosis, weakened immune system, fertility issues anemia, and breathing problems."
     let underweightImpact: String = " Fatigue, difficulty gaining weight, delayed growth and development in children."
    
     let normalRisk: String = "Considered the lowest risk category for chronic diseases."
     let normalImpact: String = "Lower risk of type 2 diabetes, heart disease, stroke, certain cancers, and other chronic conditions."

     let overweightRisk: String = "Increased risk of developing chronic diseases, including type 2 diabetes, heart disease, stroke, certain cancers, and sleep apnea."
     let overweightImpact: String = "Increased risk of fatigue, high blood pressure, high cholesterol, and musculoskeletal problems."

     let obeseRisk: String = "Significantly increased risk of developing various chronic diseases, including type 2 diabetes, heart disease, stroke, certain cancers, sleep apnea, and respiratory problems."
     let obeseImpact: String = "Increased risk of fatigue, difficulty breathing, joint pain, and decreased mobility."

    // function to calculate BMI
    func calculateBodyMassIndex(){
        let newHeight = Double(height)/100.0
        result = Double(weight)/(newHeight*newHeight)
        
        calculateResultRisk()
        calculateResultImpact()
    }
    
    // function to calculate risk:
    func calculateResultRisk(){
        switch(result){
        case 0.0...18.5:
            resultRisk = underweightRisk
            
        case 18.6...24.9:
            resultRisk = normalRisk
            
        case 25.0...29.9:
            resultRisk = overweightRisk
            
        case 30.0...100.0:
            resultRisk = obeseRisk
            
        default:
            resultRisk = "Unable to predict"
        }
    }
    
    // function to calculate risk:
    func calculateResultImpact(){
        switch result{
        case 0.0...18.5:
            resultImpact = underweightImpact
            
        case 18.6...24.9:
            resultImpact = normalImpact
            
        case 25.0...29.9:
            resultImpact = overweightImpact
            
        case 30.0...100.0:
            resultImpact = obeseImpact
            
        default:
            resultImpact = "Unable to predict"
        }
    }
    
    
    

}
