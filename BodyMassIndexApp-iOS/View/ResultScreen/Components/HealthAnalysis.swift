//
//  HealthAnalysis.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 08/05/24.
//

import SwiftUI

struct HealthAnalysis: View {
    
    @EnvironmentObject var bmiObject: BodyMassIndexViewModel
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 350)
                .foregroundColor(.black)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 5)
            
            VStack(alignment: .center, spacing: 20){
                Text("Health Risk")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Text(bmiObject.resultRisk)
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
                    .multilineTextAlignment(.center)
                
                Text("Health Impact")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                
                Text(bmiObject.resultImpact)
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
                    .multilineTextAlignment(.center)
                
            }.frame(width: 350, height: 350)
            
        }
    }
}


