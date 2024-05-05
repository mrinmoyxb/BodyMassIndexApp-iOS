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
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            // Shape
            Rectangle()
                .frame(width: 150, height: 150)
                .cornerRadius(20)
            VStack(alignment: .center){
                
                // Image
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 80, maxHeight: 80)
                
                // Text
                Text(gender).foregroundColor(.white).font(.title3).bold()
            }.frame(maxWidth: .infinity, maxHeight: .infinity).padding(.horizontal)
            
        }.frame(maxWidth: 150, maxHeight: 150)
        
    }
}

#Preview {
    SelectGender(gender: "Female", imageName: "female")
}
