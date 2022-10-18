//
//  ListView.swift
//  News-ios
//
//  Created by Sriramoju Avinash Sai on 22/09/22.
//

import SwiftUI



struct ListView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailsView(url: post.url)) {
                    HStack{
                        Text(String(post.points))
                        Text(post.title)
                        
                    }
                }
                
            }
            .navigationTitle("Posts")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}


