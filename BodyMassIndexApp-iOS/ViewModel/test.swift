//
//  test.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 06/05/24.
//

import SwiftUI

struct test1: View {
    
    @ObservedObject var a: testModel = testModel()
    @State private var shouldNavigateToMainScreen = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Demo")
                test2()
                Text(String(a.result))
                NavigationLink(destination: test3().onAppear{a.demotest()}){
                    Text("Next Screen")
                }
                
                
            }
        }.environmentObject(a)
    }
}
    
    struct test2: View {
        @State var age: Int = 0
        @EnvironmentObject var a: testModel
        
        var body: some View {
            VStack{
                Text(String(age)).font(.title).bold()
                Text("Increment")
                    .onTapGesture(perform: {
                        age += 1
                        a.age = age
                        //a.demotest()
                    })
                Text("Call")
                    .onTapGesture(perform: {
                        a.demotest()
                        
                    })
            }
        }
    }
    
    struct test3: View {
        
        @EnvironmentObject var a: testModel
        
        var body: some View {
            VStack{
                Text("Result: \(a.result)")
            }
        }
    }

#Preview {
    test1()
}

