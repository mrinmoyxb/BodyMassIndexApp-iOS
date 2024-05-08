//
//  ResultCard.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 08/05/24.
//

import SwiftUI

struct ResultCard: View {
    
    @EnvironmentObject var bmiObject: BodyMassIndexViewModel
    var body: some View {
        ZStack{
            // Shape
            Rectangle()
                .frame(width: 250, height: 250)
                .foregroundColor(.black)
                .cornerRadius(20)
            VStack{
                Spacer()
                
                // Result
                Text(String(format: "%.1f", bmiObject.result))
                    .foregroundColor(.white)
                    .font(.system(size: 70))
                    .bold()
                    .padding()
                
               
                Text("kg/m2")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                    .padding()
                Spacer()
                
            }.frame(width: 250, height: 250)
                
            
        }
    }
}

