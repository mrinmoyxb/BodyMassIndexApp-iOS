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
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }.navigationTitle("Body Mass Index")
    }
}

#Preview {
    NavigationStack{
        HomeScreen()
    }
}
