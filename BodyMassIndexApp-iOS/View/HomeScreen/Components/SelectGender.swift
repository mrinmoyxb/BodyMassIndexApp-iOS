//
//  SelectGender.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct SelectGender: View {
    
    var gender: String = ""
    var imageName: String = ""
    var buttonState: Bool = false
    
    @EnvironmentObject var bmiObject: BodyMassIndexViewModel
    
    var body: some View {
        VStack{
            Button{
                if(gender=="Male"){
                    bmiObject.sex = 1
                }
                if(gender=="Female"){
                    bmiObject.sex = 0
                }
            }
        label: {
            ZStack(alignment: .bottom){
                
                // Shape
                Rectangle()
                    .frame(width: 180, height: 180)
                    .cornerRadius(20)
                    .foregroundColor(.black)
                    .shadow(color: .gray, radius: 5)
                VStack(alignment: .center){
                    
                    // Image
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 90, maxHeight: 90)
                    
                    // Text
                    Text(gender)
                        .foregroundColor(.white)
                        .font(.title3)
                        .bold()
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity).padding(.horizontal)
                
            }.frame(maxWidth: 150, maxHeight: 150)
        }
            
        }
    }
}

