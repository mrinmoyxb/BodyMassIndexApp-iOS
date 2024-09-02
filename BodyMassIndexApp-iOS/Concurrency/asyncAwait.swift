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
    
    
/* This method will suspend all other functions while executing the first function so total execution time will be of 6s, we can use Task{} to solve the problem but "async let" is more preferable
    
 func fetchData() async {
        let posts = await fetchPosts()
        let followers = await fetchFollowers()
        let following = await fetchFollowing()

        self.userInfo = UserData(posts: posts, followers: followers, following: following)
 }
*/
    
// as here we have not used await in front of each function it will not block or suspend the second function
    func fetchData() async{
        async let posts = fetchPosts()
        async let followers = fetchFollowers()
        async let following = fetchFollowing()
        
        self.userInfo = await UserData(posts: posts, followers: followers, following: following)
    }
    
    func fetchPosts() async -> Int {
        try? await Task.sleep(nanoseconds: 3_000_000_000) // 3s
        return 9
    }
    
    func fetchFollowers() async -> Int {
        try? await Task.sleep(nanoseconds: 2_000_000_000) // 2s
        return 300
    }
    
    func fetchFollowing() async -> Int {
        try? await Task.sleep(nanoseconds: 1_000_000_000) // 1s
        return 120
    }
}


struct ConcurrnentView: View{
    
    @StateObject var viewModel = AsyncAwaitViewModel()
    var body: some View{
            HStack{
                if let stats = viewModel.userInfo{
                VStack{
                    Text("\(stats.posts)")
                    Text("Posts")
                }.frame(width: 100)
                    
                VStack{
                    Text("\(stats.followers)")
                    Text("Followers")
                }.frame(width: 100)
                    
                VStack{
                    Text("\(stats.following)")
                    Text("Following")
                }.frame(width: 100)
                
            }else{
                ProgressView()
            }
        }.task{await viewModel.fetchData()}
    }
}

#Preview {
    ConcurrnentView()
}
