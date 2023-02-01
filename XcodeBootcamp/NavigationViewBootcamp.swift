//
//  NavigationViewBootcamp.swift
//  XcodeBootcamp
//
//  Created by Emrullah Demir on 1.02.2023.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Inbox")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarHidden(true)
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
