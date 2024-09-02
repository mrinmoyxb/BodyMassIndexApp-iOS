//
//  asyncAwait1.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 02/09/24.
//

import SwiftUI

struct User: Identifiable{
    let id = UUID().uuidString
    let name: String
    let email: String
}

class AsyncAwait1: ObservableObject{
    
    @Published var allUsers:[User]? = [User]()
    
    init(){
        Task{
            await fetchUsers()
        }
    }
    
    func fetchUsers() async {
        try? await Task.sleep(nanoseconds: 2_000_000_000)
        
        let users: [User] = [
            .init(name: "alex", email: "alex@mail.com"),
            .init(name: "bob", email: "bob@mail.com"),
            .init(name: "cam", email: "cam@mail.com")
        ]
        self.allUsers = users
    }
}

struct asyncAwait1: View {
    
    @StateObject var viewModel = AsyncAwait1()
    
    var body: some View {
        VStack{
                if let allUsers = viewModel.allUsers{
                    List{
                        ForEach(allUsers){user in
                            VStack(alignment: .leading){
                                Text(user.name)
                                Text(user.email)
                            }
                        }
                }
            }else{
                ProgressView()
            }
        }
    }
}

#Preview {
    asyncAwait1()
}
