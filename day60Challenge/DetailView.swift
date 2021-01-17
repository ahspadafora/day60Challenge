//
//  DetailView.swift
//  day60Challenge
//
//  Created by Amber Spadafora on 1/16/21.
//  Copyright © 2021 Amber Spadafora. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var user: User
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Group {
                Text("email: \(user.email)")
                Text("address: \(user.address)")
                Text("about: \(user.about)")
                Text("Friends").font(.title)
            }
            
            
            Group {
                List(user.friends) { friend in
                    Text(friend.name)
                }
            }
            Spacer()
            }.navigationBarTitle(Text(user.name)).padding()
        
    }
}

struct DetailView_Previews: PreviewProvider {
    
    static var previews: some View {
        let user = User(id: "cxx", name: "Amber", age: 28, company: "abc", email: "abc.com", address: "123 abc lane", about: "abc is abc is abc", tags: [], friends: [])
        return DetailView(user: user)
    }
}
