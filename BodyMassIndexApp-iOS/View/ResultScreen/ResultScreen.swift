//
//  ResultScreen.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct ResultScreen: View {
    
    @EnvironmentObject var e: BodyMassIndexViewModel
    
    var body: some View {
        VStack{
            Text("Hello")
            Text(String(e.age))
            Text(String(e.weight))
            Text(String(e.height))
            Text(String(e.result))
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ResultScreen()
}
