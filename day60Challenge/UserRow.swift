//
//  UserRow.swift
//  day60Challenge
//
//  Created by Amber Spadafora on 1/16/21.
//  Copyright © 2021 Amber Spadafora. All rights reserved.
//

import SwiftUI

struct UserRow: View {
    var user: User
    
    var body: some View {
        VStack(alignment:.leading) {
            Text(user.name).font(.title)
            Text(user.email).font(.subheadline)
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(id: "as9jiq-ajj", name: "Amber Smith", age: 27, company: "swift", email: "swift@apple.com", address: "apple, ca", about: "ekj fi fjdd siru qow dur ki", tags: [], friends: [])
        return UserRow(user: user)
    }
}
