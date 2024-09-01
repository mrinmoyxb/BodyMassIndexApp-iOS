//
//  asyncAwait.swift
//  BodyMassIndexApp-iOS
//
//  Created by Mrinmoy Borah on 01/09/24.
//

import SwiftUI

struct UserData{
    let posts: Int
    let followers: Int
    let following: Int
}

class AsyncAwaitViewModel: ObservableObject{
    @Published var userInfo: UserData?
    
    
// This method will suspend all other functions while executing the first function so total execution time will be of 6s, we can use Task{} to solve the problem but async let is more preferable
    /* func fetchData() async {
        let posts = await fetchPosts()
        let followers = await fetchFollowers()
        let following = await fetchFollowing()

        self.userInfo = UserData(posts: posts, followers: followers, following: following)
    }*/
    
    func fetchPosts() async -> Int {
        try? await Task.sleep(nanoseconds: 3_000_000_000) // 3s
        return 9
    }
    
    func fetchFollowers() async -> Int {
        try? await Task.sleep(nanoseconds: 2_000_000_000) // 2s
        return 9
    }
    
    func fetchFollowing() async -> Int {
        try? await Task.sleep(nanoseconds: 1_000_000_000) // 1s
        return 9
    }
}

struct ConcurrnentView: View{
    var body: some View{
        HStack{
            VStack{
                Text("2")
                Text("Posts")
            }.frame(width: 100)
            VStack{
                Text("200")
                Text("Followers")
            }.frame(width: 100)
            VStack{
                Text("2")
                Text("Following")
            }.frame(width: 100)
            
        }
    }
}

#Preview {
    ConcurrnentView()
}
