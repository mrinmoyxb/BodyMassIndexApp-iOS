//
//  HealthAnalysis.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 08/05/24.
//

import SwiftUI

struct HealthAnalysis: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 350)
                .foregroundColor(.black)
                .cornerRadius(20)
                .padding()
            
            VStack(alignment: .center, spacing: 20){
                Text("Health Risk")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title)
                
                Text("zzz")
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
                
                Text("Impact on health")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title)
                    .padding()
                
                Text("zzz")
                    .foregroundColor(.white)
                    .font(.title3)
                    .padding()
                
            }
            
        }
    }
}

#Preview {
    HealthAnalysis()
}
