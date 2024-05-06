//
//  test1.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 05/05/24.
//

import SwiftUI

struct test1: View {
    
    @ObservedObject var a: testModel = testModel()
    
    var body: some View {
        NavigationStack{
        VStack{
            Text("Demo")
            test2()
            Text(String(a.result))
            NavigationLink(destination: test3(), label: {Text("Click")})
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
            Button(action: {age += 1
                a.age = age
                a.demotest()
            }, label: {
                Text("Button")
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
