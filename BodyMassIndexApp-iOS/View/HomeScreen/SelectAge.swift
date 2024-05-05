//
//  SelectAge.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct SelectAge: View {
    
    @State var age: Int = 20
    
    var body: some View {
        ZStack{
            
            // Frame
            Rectangle()
                .frame(width: 180, height: 120)
                .cornerRadius(20)
            
            HStack{
                // Button: -
                Button{
                    guard age>0 else{
                        age = 20
                        return
                    }
                    age -= 1
                }label:{
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .overlay(Image(systemName: "minus").bold().foregroundColor(.black))
                }
                
                // Age
                Spacer()
                Text(age>1 ? String(age) : "20")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .bold()
                Spacer()
                
                // Button: +
                Button{
                    age += 1
                }label:{
                    Circle()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                        .overlay(Image(systemName: "plus").bold().foregroundColor(.black))
                }
                
            }.padding().frame(width: 180, height: 120)
        }
    }
}

#Preview {
    SelectAge()
}
