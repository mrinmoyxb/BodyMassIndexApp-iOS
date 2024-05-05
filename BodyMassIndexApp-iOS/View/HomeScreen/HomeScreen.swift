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
                    Spacer().frame(width: 100)
                    Text("Select Weight(kg)").font(.title3)
                    Spacer()
                }
                HStack{
                    SelectAge()
                    Spacer()
                    SelectWeight()
                }
                
                // Height Section
                HStack{
                    Text("Select Height(cm)")
                        .font(.title3)
                    Spacer()
                }
                HStack{
                    SelectHeight()
                }
                
                // Calculate BMI
                Spacer()
                NavigationLink(destination: ResultScreen(),
                               label: {Text("Calculate BMI")
                        .frame(maxWidth: .infinity)
                        .frame(height: 70)
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .background(.black)
                    .cornerRadius(20)}
                )
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
