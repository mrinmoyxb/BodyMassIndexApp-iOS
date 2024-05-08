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
        VStack(alignment: .center, spacing: 20){
            Spacer()
            ResultCard()
            
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.all)
    }
}

#Preview {
    ResultScreen()
        .environmentObject(BodyMassIndexViewModel())
}
