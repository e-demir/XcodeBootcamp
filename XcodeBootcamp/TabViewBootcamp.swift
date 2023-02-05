//
//  TabViewBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 5.02.2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    var body: some View {
        TabView {
            Text("Home")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }            
                Rectangle()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Account")
                }
                .badge(1)
                
                
        }
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
