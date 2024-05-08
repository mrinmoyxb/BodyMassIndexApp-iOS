//
//  ResultScreen.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct ResultScreen: View {
    
    //@EnvironmentObject var e: BodyMassIndexViewModel
    
    var body: some View {
        VStack{
            ResultCard()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ResultScreen()
        .environmentObject(BodyMassIndexViewModel())
}
