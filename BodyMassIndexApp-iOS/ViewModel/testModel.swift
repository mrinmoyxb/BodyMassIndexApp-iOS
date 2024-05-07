//
//  testModel.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 06/05/24.
//

import Foundation

class testModel: ObservableObject{
    @Published var age: Int = -1
    @Published var result: Int = 0
    
    func demotest(){
        result = age*100
    }
}

