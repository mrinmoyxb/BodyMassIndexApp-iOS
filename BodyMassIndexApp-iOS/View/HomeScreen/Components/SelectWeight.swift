//
//  SelectWeight.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct SelectWeight: View {
    
    @State var weightOfUser: Int = 0
    @EnvironmentObject var bmiObject: BodyMassIndexViewModel
    
    var body: some View {
        ZStack{
            
            // Frame
            Rectangle()
                .frame(width: 180, height: 120)
                .cornerRadius(20)
            
            // Weight
            HStack{
                ScrollView(.horizontal){
                    LazyHStack{
                        ForEach(10...150, id: \.self){age in
                            Button(action: {weightOfUser = age
                                bmiObject.weight = weightOfUser
                            },
                                   label: {Text(String(age))
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                    .bold()
                                .padding(4.5)}
                            )
                            
                        }
                    }
                }
                
            }.padding().frame(width: 180, height: 120)
            
        }
    }
}


