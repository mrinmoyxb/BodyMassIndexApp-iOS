//
//  HomeScreen.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 10){
                
                // Gender section
                HStack{
                    Text("Select Gender").font(.title3)
                    Spacer()
                }
                HStack{
                    SelectGender(gender: "Male", imageName: "male")
                    Spacer().frame(width: 40)
                    SelectGender(gender: "Female", imageName: "female")
                }.frame(maxWidth: .infinity).padding()
                
                // Age Section
                HStack{
                    Text("Select Age").font(.title3)
                    Spacer()
                }
                HStack{
                    SelectAge()
                    Spacer()
                }
                Spacer()
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.all)
        }.navigationTitle("Body Mass Index").font(.headline)
    }
}

#Preview {
    NavigationStack{
        HomeScreen()
    }
}
