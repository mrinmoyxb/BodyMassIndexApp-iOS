//
//  SelectWeight.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

import SwiftUI

struct SelectWeight: View {
    
    @State var ages: [Int] = Array(10...150)
    
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
                        ForEach(ages, id: \.self){age in
                            Text(String(age))
                                .font(.largeTitle)
                                .bold()
                                .foregroundColor(.white)
                                .padding([.all], 5)
                            
                        }
                    }
                }
                
            }.padding().frame(width: 180, height: 120)
        }
    }
}


#Preview {
    SelectWeight()
}
