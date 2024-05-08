//
//  SelectHeight.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct SelectHeight: View {
    
    @State var heightOfUser: Int = 0
    @EnvironmentObject var bmiObject: BodyMassIndexViewModel
    
    var body: some View {
        ZStack{
            
            // Frame
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 120)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 5)
            
            // Weight
            HStack{
                ScrollView(.horizontal){
                    LazyHStack{
                        ForEach(30...200, id: \.self){height in
                            Button(action: {heightOfUser = height
                                bmiObject.height = heightOfUser},
                                   label: {Text(String(height))
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .bold()
                                .padding(4.5)}
                            )
                            
                        }
                    }
                }
                
            }.padding()
                .frame(maxWidth: .infinity)
                .frame(height: 120)
            
        }
    }
}

