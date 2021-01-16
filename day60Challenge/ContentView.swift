//
//  ContentView.swift
//  day60Challenge
//
//  Created by Amber Spadafora on 1/16/21.
//  Copyright © 2021 Amber Spadafora. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!").onAppear {
            self.loadUserData()
        }
    }
    
    func loadUserData() {
        // create URL
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Error creating URL")
            return
        }
        // create URLRequest
        let urlRequest = URLRequest(url: url)
        
        // call URLSession.shared.dataTask on URLRequest
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            // handle results of dataTask
            if let data = data {
                if let decodedUsersArray = try? JSONDecoder().decode([User].self, from: data) {
                    print(decodedUsersArray.count)
                } else {
                    print("decoded response is empty")
                }
            } else {
                print("Data is not valid")
            }
        
        }.resume()
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
