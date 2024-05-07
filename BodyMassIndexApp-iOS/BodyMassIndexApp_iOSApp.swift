//
//  BodyMassIndexApp_iOSApp.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

@main
struct BodyMassIndexApp_iOSApp: App {
    
    @ObservedObject var bmiObject: BodyMassIndexViewModel = BodyMassIndexViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                HomeScreen()
            }.environmentObject(bmiObject)
        }
    }
}
