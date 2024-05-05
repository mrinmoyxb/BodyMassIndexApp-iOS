//
//  SelectHeight.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct SelectHeight: View {
    
    @State var heightOfUser: Int = 0
    
    var body: some View {
        ZStack{
            
            // Frame
            Rectangle()
                .frame(maxWidth: .infinity)
                .frame(height: 120)
                .cornerRadius(20)
            
            // Weight
            HStack{
                ScrollView(.horizontal){
                    LazyHStack{
                        ForEach(30...200, id: \.self){height in
                            Button(action: {heightOfUser = height},
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

#Preview {
    SelectHeight()
}
