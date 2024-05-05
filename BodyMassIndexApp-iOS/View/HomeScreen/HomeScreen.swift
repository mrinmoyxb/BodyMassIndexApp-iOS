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
            VStack{
                HStack{
                    SelectGender(gender: "Male", imageName: "male")
                    SelectGender(gender: "Female", imageName: "female")
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.navigationTitle("Body Mass Index")
    }
}

#Preview {
    NavigationStack{
        HomeScreen()
    }
}
